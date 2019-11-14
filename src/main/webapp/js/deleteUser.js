function del(id) {
    $.post("deleteUser",{"id":id},function (data) {
        $("#"+id).remove();
    })
}