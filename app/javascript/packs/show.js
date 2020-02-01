$("document").ready(function() {
    $("#show_table #favourite").click(function() {
        var fav = ($("#is_fav").val() == false) ? true : false
        var show_id = $("#show_id").val()
        $.ajax({
            method: "PATCH",
            url: "shows/" + show_id,
            dataType: 'JSON',
            data: {is_fav: fav, id: show_id},
            success: function(response){
                if(response.status == 201 && response.is_fav == true) { 
                    $("#show_table #favourite").addClass('text-danger');
                } else {
                    $("#show_table #favourite").removeClass('text-danger');
                }
            }
        });
    })
})