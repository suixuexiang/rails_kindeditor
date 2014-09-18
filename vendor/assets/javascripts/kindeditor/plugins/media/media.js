/*******************************************************************************
* KindEditor - WYSIWYG HTML Editor for Internet
* Copyright (C) 2006-2011 kindsoft.net
*
* @author Roddy <luolonghao@gmail.com>
* @site http://www.kindsoft.net/
* @licence http://www.kindsoft.net/license.php
*******************************************************************************/
var dataURL;
KindEditor.plugin('media', function(K) {
	var self = this, name = 'media', lang = self.lang(name + '.'),
		allowMediaUpload = K.undef(self.allowMediaUpload, true),
		allowFileManager = K.undef(self.allowFileManager, false),
		formatUploadUrl = K.undef(self.formatUploadUrl, true),
		extraParams = K.undef(self.extraFileUploadParams, {}),
		filePostName = K.undef(self.filePostName, 'imgFile'),
		uploadJson = K.undef(self.uploadJson, self.basePath + 'php/upload_json.php');
	self.plugin.media = {
		edit : function() {
			var html = [
				'<div style="padding:20px;">',
				//url
				'<div class="ke-dialog-row">',
				'<label for="keUrl" style="width:60px;">' + lang.url + '</label>',
				'<input class="ke-input-text" type="text" id="keUrl" name="url" value="" style="width:160px;" /> &nbsp;',
				'<input type="button" class="ke-upload-button" value="' + lang.upload + '" /> &nbsp;',
				'<span class="ke-button-common ke-button-outer">',
				'<input type="button" class="ke-button-common ke-button" name="viewServer" value="' + lang.viewServer + '" />',
				'</span>',
				'</div>',
				//autostart
				'<div class="ke-dialog-row">',
				'<label for="keAutostart">' + lang.autostart + '</label>',
				'<input type="checkbox" id="keAutostart" name="autostart" value="" /> ',
				'</div>',
				'</div>'
			].join('');
			var dialog = self.createDialog({
				name : name,
				width : 450,
				height : 230,
				title : self.lang(name),
				body : html,
				yesBtn : {
					name : self.lang('yes'),
					click : function(e) {
						var url = K.trim(urlBox.val()),
							width = widthBox.val(),
							height = heightBox.val();
						if (url == 'http://' || K.invalidUrl(url)) {
							alert(self.lang('invalidUrl'));
							urlBox[0].focus();
							return;
						}
						if (!/^\d*$/.test(width)) {
							alert(self.lang('invalidWidth'));
							widthBox[0].focus();
							return;
						}
						if (!/^\d*$/.test(height)) {
							alert(self.lang('invalidHeight'));
							heightBox[0].focus();
							return;
						}
						self.hideDialog();
                        // var video=document.createElement("video");
                        // video.src=url;
                        // video.onloadedmetadata=function(){

                        // 	var vHeight=video.videoHeight;
                        // 	var vWidth=video.videoWidth;
                        // 	var dWidth= vWidth>vHeight? 720 : 450;
                        // 	var dHeight= vWidth>vHeight? 600 : 600;
                     
                        // };
                        var chooseFrame=[
						'<div>',
						'<video id="my_video" controls autoplay loop width="'+dWidth+'" crossOrigin="anonymous" onpause="pausedraw()" onloadedmetadata="loadmeta()" > <source src='+url+' type="video/mp4"/></video>',
						'<canvas id="thecanvas" style="display:none"></canvas>',
						'</div>'
						].join('');
                    	var dialog = self.createDialog({
							name : name,
							width : dWidth,
							height : ,
							title : "播放视频，点击暂停选择封面",
							body : chooseFrame,
							yesBtn : {
								name : self.lang('yes'),
								click : function(e) {
									if (!dataURL){
										alert('请先暂停选择封面！')
									}
									else{
										$.ajax({
											url: '/kindeditor/uploadcover',
											type: 'post',
											data: {imgFile: dataURL,dir:'image'},
											dataType: 'json',
											success: function(data){
												var resp=data;
												console.log(typeof(resp));
												if (data.error==0){
													var html = K.mediaImg(self.themesPath + 'common/blank.gif', {
														src : '/mediaplayer.swf?file='+url,
														url : url,
														"data-ke-tag":url,
														coverurl: data.url,	
														width : 277,
														autostart : autostartBox[0].checked ? 'true' : 'false',
														loop : 'true'
													});
													var ht="<img src="+data.url+">"
													alert(data.url);
													self.insertHtml(html).hideDialog().focus();
													dataURL="";
												}
												else{
													alert("服务器错误，请重新截取");
												}
											},
											error: function(){
												alert("提交失败，请重新截取");
											}
										});
									}
								}
							}
						});
						
					}
				}
			}),
			div = dialog.div,
			urlBox = K('[name="url"]', div),
			viewServerBtn = K('[name="viewServer"]', div),
			widthBox = K('[name="width"]', div),
			heightBox = K('[name="height"]', div),
			autostartBox = K('[name="autostart"]', div);
			urlBox.val('http://');

			if (allowMediaUpload) {
				var uploadbutton = K.uploadbutton({
					button : K('.ke-upload-button', div)[0],
					fieldName : filePostName,
					extraParams : extraParams,
					url : K.addParam(uploadJson, 'dir=media'),
					afterUpload : function(data) {
						dialog.hideLoading();
						if (data.error === 0) {
							var url = data.url;
							if (formatUploadUrl) {
								url = K.formatUrl(url, 'absolute');
							}
							urlBox.val(url);
							if (self.afterUpload) {
								self.afterUpload.call(self, url, data, name);
							}
							alert(self.lang('uploadSuccess'));
						} else {
							alert(data.message);
						}
					},
					afterError : function(html) {
						dialog.hideLoading();
						self.errorDialog(html);
					}
				});
				uploadbutton.fileBox.change(function(e) {
					dialog.showLoading(self.lang('uploadLoading'));
					uploadbutton.submit();
				});
			} else {
				K('.ke-upload-button', div).hide();
			}

			if (allowFileManager) {
				viewServerBtn.click(function(e) {
					self.loadPlugin('filemanager', function() {
						self.plugin.filemanagerDialog({
							viewType : 'LIST',
							dirName : 'media',
							clickFn : function(url, title) {
								if (self.dialogs.length > 1) {
									K('[name="url"]', div).val(url);
									if (self.afterSelectFile) {
										self.afterSelectFile.call(self, url);
									}
									self.hideDialog();
								}
							}
						});
					});
				});
			} else {
				viewServerBtn.hide();
			}

			var img = self.plugin.getSelectedMedia();
			if (img) {
				var attrs = K.mediaAttrs(img.attr('data-ke-tag'));
				urlBox.val(attrs.src);
				widthBox.val(K.removeUnit(img.css('width')) || attrs.width || 0);
				heightBox.val(K.removeUnit(img.css('height')) || attrs.height || 0);
				autostartBox[0].checked = (attrs.autostart === 'true');
			}
			urlBox[0].focus();
			urlBox[0].select();
		},
		'delete' : function() {
			self.plugin.getSelectedMedia().remove();
			// [IE] 删除图片后立即点击图片按钮出错
			self.addBookmark();
		}
	};
	self.clickToolbar(name, self.plugin.media.edit);
});

function pausedraw(){
	alert('who call me!!!');
	var video = document.getElementById('my_video');
	var thecanvas = document.getElementById('thecanvas');
	thecanvas.height=video.videoHeight;
	thecanvas.width=video.videoWidth;
	var context = thecanvas.getContext('2d');
    context.drawImage(video, 0, 0, thecanvas.width, thecanvas.height);
    dataURL = thecanvas.toDataURL();
}
function loadmeta(){
	var video = document.getElementById('my_video');
	var vHeight=video.videoHeight;
    var vWidth=video.videoWidth;
    video.width=vWidth>vHeight? 720 : 300;
}
