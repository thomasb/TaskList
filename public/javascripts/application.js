// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function insert_fields(link, method, content) {
    var new_id = new Date().getTime();
    var regexp = new RegExp("new_" + method, "g")
    $(link).before(content.replace(regexp, new_id));
}
function remove_fields(link) {
    var hidden_field = $(link).prev("input[type=hidden]");
    if (hidden_field) {
        hidden_field.val('1');
    }
    $(link).closest(".tag").hide();
}

$(document).ready(function(){
	$('.hidden').show('blind');
});