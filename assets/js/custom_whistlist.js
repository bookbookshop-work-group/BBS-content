$(".wishlist-button-add").each((function (){

    //copy des events
    let events= getEventListeners($(this)[0]);
    if(events.click && events.click.length>0)
    {
        console.log("whistlist ", events.click[0].listener)       
        $(this).prev().children().last().on("click",events.click[0].listener) 
    }
    // if(events)
    // {
    //     console.log("Event ",events)
    //     $(this).prev().children().last()[0]
        
    // }
    // $(this).hide();
}))

// (function (){
//     let elt = document.querySelector('.wishlist-button-add');
//     let evs = getEventListeners(elt);
//     console.log({
//         el: evs,
//         types: Object.keys(evs).join(', '),
//         listeners: evs
//     })
// })()