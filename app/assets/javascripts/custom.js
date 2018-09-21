//= require_self

// $('.otype_select select').on('change', function() {
// 	alert("you changed that");
// });


function extraQuestion() {
	if ($(".otype_select select option:selected" ).text() == "LED Lighting (Interior)") {
		$('.lights_drop').slideDown(500);
	} else {
		$('.lights_drop').css('display', 'none');
	}	
};

$('.otype_select select').on('change', extraQuestion );
					