$('#group_member_catalogs_member_type_id').change(mtFieldsSetup);
function mtFieldsSetup() {
       // Check if no member type is empty, this happens when new group member is been captured
       if(!!($('#group_member_catalogs_member_type_id').val())){
              $.ajax({
                     type: "GET",
                     url: "/group_members/fields_setup/" + $('#group_member_catalogs_member_type_id').val()
              });
       }
};
$(document).ready(function() {
       $('#group_member_catalogs_member_type_id').change();
});


