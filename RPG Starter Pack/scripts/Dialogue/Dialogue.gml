// a global function that any item can call
function create_dialogue(_messages){
    // if it does exist then stop
    if (instance_exists(Obj_dialogue)) return;
        
    var _inst = instance_create_depth(0, 0, 0, Obj_dialogue);
    _inst.messages = _messages;
    _inst.current_message = 0;
}

char_colors = {
    "Congrats": c_yellow,
    "Sir William Fancyman": c_lime,
    "Timmy": c_red,
    "Billy The Wheat Farmer": c_olive,
    "Hobin Rood": c_green,
}

// mayor dialogue
story_dialogue = [
{
   // repeat structs for new messages
    name: "Sir William Fancyman",
    msg: "Hello, my name is Sir Fancyman, and I am the owner of this town"
},

{
    name: "Sir William Fancyman",
    msg: "My town's security is in great danger, and I need you to help! "
},

{
    name: "Sir William Fancyman",
    msg: "We have been under attack by some vile orcs who have been constantly insulting my villagers."
},

{
    name: "Sir William Fancyman",
    msg: "It would make me quite happy if you exterminated all of them, and destroy their leader. I heard they might even have a magic portal! (I think he wants you to go through the portal)"
},
]
// poor guy dialogue 
vilager_dialogue = [
{
    name: "Billy The Wheat Farmer",    
    msg: "Hey mister you look wealthy. I have something I need your help with."
},
{
    name: "Billy The Wheat Farmer",
    msg: "The orcs keep chasing me off the fields, and because of that I haven't been able to get any work done.  Without getting work done I can't get paid, and with no pay that means no Ye Olde Davicus's Warm Fried Chicken (Definitely not Dave's Hot Chicken)"
},
{
    name: "Billy The Wheat Farmer",
    msg: "Killing the orcs will help me get my chicken so please destroy every last one of them!!!!!!!!!!!!!!!!!!!"
},
]
// hobin basic dialogue
Hobin_Rood = [{
    name: "Hobin Rood",
    msg: "Hola me llamo Hobin Rood, I require your assistance, Ou entao."
    
},
{
    name: "Hobin Rood",
    msg: "As you can see from my knowledege of many langauges, Eg get tekist a vio mal a karlmannlegan hatt."
},
{
    name: "Hobin Rood",
    msg: "Some pesky lupi have been bothering me, and I am too powerful to be Ho opau i ko u manawa."
},
{
    name: "Hobin Rood",
    msg: "If you are able to exterminate 10 of them, Odullendirileceksiniz. (1 to accept the quest)"
},
]
// hobin after quest dialogue
Hobin_rood_quest_finish = [{
    name: "Hobin Rood",
    msg: "Wow you did it, maybe I should stop speaking in languages you obviously don't understand (unless you cheated with google translate) and give you a small bit more respect."    
},
{
    name: "Hobin Rood",
    msg: "Here's a bit of extra exp for killing those wolves"
},
{
    name: "Hobin Rood",
    msg: "+150xp and the Respect of Hobin"
}
]
Hobin_rood_basic_text = [{
    name: "Hobin Rood",
    msg: "Nice day for hunting ain't it. Huh huh"
    
},
]