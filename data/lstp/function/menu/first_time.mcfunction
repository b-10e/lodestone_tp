function lstp:fx/yes_sound
tellraw @s [\
    {storage:"lstp:text",nbt:"message_prefix",interpret:true},\
    {text:"This message will not appear again.\n",color:"dark_gray"},\
    {text:"  Lodestone TP has personal settings!\n",color:"gray"},\
    {text:"  Press [",color:"gray"},\
    {translate:"key.keyboard.escape",color:"white"},\
    {text:"] > ", color:gray},\
    {translate:"selectWorld.dataPacks",color:"white"},\
    {text:" > ", color:gray},\
    {text:"Lodestone TP",color:"white"},\
    {text:" > ", color:gray},\
    {text:"Preferences",color:"white"},\
    {text:".\n",color:"gray"},\
]