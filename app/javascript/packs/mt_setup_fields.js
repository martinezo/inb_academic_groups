$('#group_member_catalogs_member_type_id').change(mtFieldsSetup);
function mtFieldsSetup() {
       $.ajax({
              type: "GET",
              url: "/group_members/fields_setup/" + $('#group_member_catalogs_member_type_id').val(),
       });
};
$(document).ready(function() {
       $('#group_member_catalogs_member_type_id').change();
});


