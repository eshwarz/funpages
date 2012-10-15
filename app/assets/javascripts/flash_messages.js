$(document).ready(function(){
	hide_flash_messages()
})

function hide_flash_messages() {
	$('.alert, .notice').delay(3000).fadeOut('fast')
}