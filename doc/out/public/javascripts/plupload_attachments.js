<script type="text/javascript">
$(function() {
$("#uploader").pluploadQueue({
		// General settings
		runtimes : 'html5,gears,flash,browserplus,html4',
		url : 'uploads',
		max_file_size : '10mb',
		chunk_size : '1mb',
		unique_names : true,

		// Resize images on clientside if we can
		resize : {width : 320, height : 240, quality : 90},

		// Specify what files to browse for
		filters : [
			{title : "Image files", extensions : "jpg,gif,png"},
			{title : "Zip files", extensions : "zip"}
		],

		// Flash settings
		flash_swf_url : '/plupload/js/Moxie.swf',

		// PreInit events, bound before any internal events
		preinit : {
			Init: function(up, info) {
				//log('[Init]', 'Info:', info, 'Features:', up.features);
			},

			UploadFile: function(up, file) {
				//log('[UploadFile]', file);

				// You can override settings before the file is uploaded
				// up.settings.url = 'upload.php?id=' + file.id;
				// up.settings.multipart_params = {param1 : 'value1', param2 : 'value2'};
			}
		},

		// Post init events, bound after the internal events
		init : {
			Refresh: function(up) {
				// Called when upload shim is moved
				console.log('[Refresh]');
			},

			StateChanged: function(up) {
				// Called when the state of the queue is changed
				console.log('[StateChanged]', up.state == plupload.STARTED ? "STARTED" : "STOPPED");
			},

			QueueChanged: function(up) {
				// Called when the files in queue are changed by adding/removing files
				console.log('[QueueChanged]');
			},

			UploadProgress: function(up, file) {
				// Called while a file is being uploaded
				console.log('[UploadProgress]', 'File:', file, "Total:", up.total);
			},

			FilesAdded: function(up, files) {
				// Callced when files are added to queue
				//log('[FilesAdded]');

				plupload.each(files, function(file) {
					console.log('  FileAdded:', file);
				});
			},

			FilesRemoved: function(up, files) {
				// Called when files where removed from queue
				//log('[FilesRemoved]');

				plupload.each(files, function(file) {
					log('  FileRemoved:', file);
				});
			},

			FileUploaded: function(up, file, info) {
				// Called when a file has finished uploading
				console.log('[FileUploaded] File:', file, "Info:", info);
			},

			ChunkUploaded: function(up, file, info) {
				// Called when a file chunk has finished uploading
				console.log('[ChunkUploaded] File:', file, "Info:", info);
			},

			Error: function(up, args) {
				// Called when a error has occured
				console.info('[error] ', args);
			}
		}
	});
});
</script>