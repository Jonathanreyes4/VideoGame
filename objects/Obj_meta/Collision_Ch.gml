if room=Level1{
global.pasarlv [1] =true
global.bloqueadolv [2]=false
room_goto (Salas)
}
if room=Level2 {
global.pasarlv [2]=true
global.bloqueadolv [3]=false
room_goto (Salas)
}
if room=Level3{
global.pasarlv [3] =true
global.bloqueadolv [4]=false
room_goto (Salas)
}
if room=Level4{
global.pasarlv [4] =true
global.bloqueadolv [5]=false
room_goto (Salas)
}
if room=Level5{
global.pasarlv [5] =true
room_goto (The_End_Room)
}





