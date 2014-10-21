"Clementine Way" by Brent Uramoto

My Kitchen is a room. "This is where I cook my meals. It is a medium sized room with an oven and a refrigerator. The oven is in the far corner of the room, The refrigerator is on the right wall. There is a marble table in the middle of the room. My recipe locker is next to the refrigerator. The kitchen is lit by while florescent lights and a window that looks out into the yard. The Dining Room is to the west, the Bed Room is to the south, the Living room is to the east."

[setting variables]
Oven Temp is a number that varies. Oven Temp is 0.
[remember to put a period at the end of statements like these]
Story Line is a number that varies. Story Line is 0.
Clean is a number that varies. Clean is 0.
[end variables]

[Tells inform to understand the term for turning]
Understand "turn [something] to [a number]" as turning it to.
Turning it to is an action applying to one thing and one number.
[From Cole Damon's code in Laboratory Escape]

[Oven description]
Oven is a closed container in my kitchen. It is undescribed. The description is "A standard electric oven. It is fairly new, I only bought it six months ago. The oven controls is a simple knob that has different temperatures on it. 300, 350 and 400. [if Oven Temp is 300]Now the oven is at a hot 300ºF.[end if][if Oven Temp is 350] Now the oven is at a scorching 350ºF.[end if][if Oven Temp is 400] Now the oven is at a blistering 400ºF[end if]"

oven controls is a part of oven. It is undescribed. Oven controls can be turned to 300, 350 and 400.

[setting oven temperature statements]

Instead of turning oven controls to 300:
      now Oven Temp is 300;
      say "The oven starts to get warm, and after a few minutes, the temperature skyrockets to 300ºF."
[setting temperature at 300]

Instead of turning oven controls to 350:
	now Oven Temp is 350;
	say "The oven heats up quickly, and you watch as the temperature rises to 350ºF. You can feel some of the heat radiating off of your face."
	[setting temperature to 350]
	
Instead of turning oven controls to 400:
	now Oven Temp is 400;
	say "The oven temperature soars until it reaches 400ºF. Even standing a few feet away from it, you can feel the heat bouncing off your face."
	[setting temperature to 400]
	
Instead of taking the oven, say "Why in the world would I need to take the oven. It must weigh a ton! Besides, I need to cook the dish in there, so I shouldn't move it."
	
[end oven temperature statements]
[end oven description]

Recipe storage is a closed openable container in the kitchen. It is undescribed. The description is "It is a white wood locker that I keep my recipes in.[if Recipe storage is closed] It is closed.[end if][if Recipe storage is open]It is open. There are a bunch of interesting recipes in here, but there is one that you had intended to make for Jennifer.[end if]"

Old recipe is a thing in recipe storage. The description is "This is a dish that Jennifer and I used to make when we were kids. It is still a good recipe, in fact, I made it a month ago, and it tasted great! But I accidentally ripped the paper when I made it last time. To make matters worse, I've completely forgotten how to make it. I can only make out some writing of the scraps. 'Soup'...'oven'...'smokey'...'M and Ms'. Not going to be much help, but it's all I got for now."

Marble table is a supporter in the kitchen. It is undescribed. It is fixed in place. The description is "A black and white marble table. It's been here as long as my house was here."

Unlabeled can of soup is a closed openable container. It is locked. The description is "An unlabeled can of soup. The outside is made of the typical corrugated tin."

[Start of Dining Room]
Dining Room is west of the Kitchen. "This is where meals are eaten. It is a small room consisting of a small wood table, 2 wood chairs, and a utensil cabinet. A glass chandelier casts a warm glow in the room. There is a window that looks out onto Clementine Way. The Kitchen is to the east."
[end of Dining Room]

[Start of Bedroom]
Bed Room is south of Kitchen. "This is where I sleep every night. My bed is right in front of me, the phone and my address book is on the nightstand to the left of the bed, and a desk lamp lights the room. The Kitchen is to the north."

Phone is a thing in Bed Room. It is undescribed. The description is "A regular house phone. I don't use it that often, maybe four times a week. It has a dial pad to put in numbers."
[End of Bedroom]

[Start of Living room]
Living Room is east of Kitchen."This is the living room where I sit on the couch and watch TV. My adress book is here on the coffee table. [if Clean is 1] It was a mess, but now it is very organized and clean. [end if] The Street is past the front door to the north."

Coffee Table is a supporter in the Living Room. It is fixed in place. The description is "A simple gass coffee table. It always fogs up under anything that has a different temperature than the glass."

Understand "424-8475" or "call 424-8475" or "dial 424-8475" as casting 424-8475.

Casting 424-8475 is an action applying to nothing.
Instead of casting 424-8475:
	If player is carrying phone:
		Say "Hello" [First step in making the call. Need to add conversation here later]
	

Address Book is a container in Living Room. It is fixed in place. It is undescribed. It is closed and openable. The description is "This is the address book that I keep next to my phone in case I want to call someone."[Open the adress book that has multiple numbers in it. If I have time, I will make calling the other numbers something else.]

[Start phone numbers]
Jennifer's Number is a thing in Address Book. It is fixed in place. The description is "424-8475".
Mitch's Number is a thing in Address Book. It is fixed in place. The description is "424-5332".
Margret's Number is a thing in Address Book. It is fixed in place. The description is "424-9485".
Steve's Number is a thing in Address Book. It is fixed in place. The description is "424-7778".
[End phone numbers]

[end of living room]

[Start of Clementine Way]
Clementine Way is north of Living Room. "This is the street that runs past the front of my house. Good thing the street lights are on, otherwise, it would be pitch black. The sidewalk and asphalt are in good condition. Cool Autumn breezes make you shiver slightly. The Intersection by Jennifer's house is to the east, and my house is to the south."[Need to add more description here]
[End of Clementine Way]

[Start of Intersection]
Intersection is east of Clementine Way. "This is a well-lit intersection.  Clementine Way and Walnut street meet here in a T. Only a stop sign controls traffic in the intersection.The cool air feels nice on my face. Jennifer's house is to the south."[Need to add more description here]
[end of intersection]

[Start of Jennifer's porch]
Jennifer's Porch is south of Intersection. "I am now standing in front of Jennifer's door. She has a white medium-sized house. The porch is made of red plastic. The intersection is to the north, and Jennifer's door is to the south."[Need to add more description here]
[End of Jennifer's porch]

[Start of Jennifer's Door]
Jennifer's Door is south of Jennifer's Porch and north of Jennifer's Living Room. Jennifer's Door is a door. "It is a wood door painted red. It has a simple brass keyhole and brass knob. The plaque on the door presents the numbers '6512'"[This is supposed to be locked, but I am currently testing if all the rooms are able to be walked through]
[End of Jennifer's porch]

[Start Jennifer's Living Room]
Jennifer's Living Room is south of Jennifer's Door. "This is Jennifer's Living Room. I've only been over here once or twice. It is a fairly large room, but it has a cozy feeling to it. Jennifer's Porch is to the north, and Jennifer's Kitchen is to the south."[Need to add more description here]
[End of Jennifer's Living Room]

[Start Jennifer's kitchen]
Jennifer's Kitchen is south of Jennifer's Living Room. "This is Jennifer's kitchen. It is smaller than mine, but it has all the appliances. Jennifer's Living Room is to the north."[Need to add more description here]
[End Jennifer's kitchen]

[task for next time-create stove and refrigerator. If have time, create description for player and rest of rooms for house. Refer to Inspire map for rooms.]