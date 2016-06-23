$(function(){
	//锟较达拷图片
	new AjaxUpload('#addLabProdPic', {
		action: 'upload.action', 
		name: 'file',
		responseType: 'json',
		onSubmit : function(file , ext){
			if (ext && /^(jpg|png|bmp)$/.test(ext.toLowerCase())){
				this.setData({
					'fileFileName': file
				});
			} else {
				alert("锟斤拷锟较达拷锟斤拷式为 jpg|png|bmp 锟斤拷图片锟斤拷");
				return false;				
			}
		},
		onComplete : function(file,response){
			if(response.error) {
				alert("error");
				return;
			}
	
			$("#viewImgs").append("<img src='"+response.picUrl+"'/>");
//			$('#viewImg').attr('src',response.picUrl);
//			$('#viewImg').css('display','block');
			$("#picpath").val( $("#picpath").val()+","+ response.picUrl);
		}		
	});
});