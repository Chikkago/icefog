value1 = document.getElementById 'value1'
value2 = document.getElementById 'value2'
controlsDiv = document.getElementById 'controls'
buttons = controlsDiv.getElementsByTagName 'button'
resultDiv = document.getElementById 'result'
###
  Event Handler
###
addEvent = (element, evnt, funct) ->
  console.log 'me'
  if element.attachEvent
   element.attachEvent 'on'+evnt, funct;
  else
   element.addEventListener evnt, funct, false;
###
  Adding events to buttons
###
for i in [0...buttons.length]  
  switch buttons[i].id
    when "add" then addEvent buttons[i],'click',add
    when "sub" then console.log 'sub'
    when "mul" then console.log 'mul'
    when "div" then console.log 'div'
    else console.log 'equal'
      
add = ->
  alert 'add'