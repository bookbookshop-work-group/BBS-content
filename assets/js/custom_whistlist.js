$(".wishlist-button-add").each((function (){

    //copy des events
    let events=$(this).data("events");
    console.log("whistlist ",$(this))
    if(events)
    {
        console.log("Event ",events)
        for(const eventType in events)
        {
            for(const idx in events[eventType])
            {
                $(this).prev().children().last()[eventType](events[eventType][idx].handler);
            }
        }
    }
    // $(this).hide();
}))