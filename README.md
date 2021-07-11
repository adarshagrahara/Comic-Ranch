## Where did my stroke of genius come from?
My inspiration for this was sites like youtube and twitter, but more for people that aren't big on massive platforms. People that don't have that type of reach to gain an audience. And this would help people grow a fanbase. This could be a place where people do what they love to do, but more focused on comic strips and such.

## What is it for
This is a media platform for people that want to share their comics. It lets you share your creativity with others that also take attention to comic strips.

## How it was created
Well I started off with making a static html page of how I wanted it. Then instead of making another page to make a form, to submit your comic, I wanted to have it on the same page. Some exploring later, I found bootstrap has modals. These are basically a popup within the page. At this point changed my page from a .html to a .jsp file so I could use it. And all I had to do now was create a java servlet so i could post new comics. Well that was much much harder than i thought, but it ended up working, well just the text portion of the comic. The next thing that i had to do was make it able to upload your own image, the heart of your comic, but man was that hard. I had to create another whole servlet, and make sure the data of the image was passing through, not just the name. And thankfully there were tutorials for that. But once I got the image, where was i going to store it? I looked everywhere on the internet and they all said make a database. So I was like, no no, I'm going to work on another portion of the project. But what? Oh yeah, the login page. Every social media has a form of a login, you know, to tell who is who. But that also required a database. No thank you, so I decided to create a login page, that just stored you're Username, so when you post something, you can tell who has done it. But with multiple pages open, I got confused with which Username I was logged into. So I did probably the most inefficient thing. I took the login Username that was passed through the login servlet, and I passed that java variable into the jsp page, as a java variable, then turned into a javascript variable, then printed it out through html. And now I was done, oh yeah I forgot the image uploading thingi. So I scoured the internet a bit more to THANK GOD. I found a youtube video that explains how to upload an image/file and it gets downloaded on my local device. See I have tried to make a database, but I always mess up somewhere, and I felt that I wouldn't have had the time to create that, and then everything else. So after the image it downloaded, I just had to call it and use it when the comic is posted. I wanted to add one last feature, You know how for most social medias, you have to reload the page to get new posts? Well I turned to google once again and found ajax. And there is this thing, well this epic thing, what it does it updates the page without reloading, crazy helpful. And well thats pretty much it.

## Challenges :(
There was a lot of challenges, but I'll only take about the important ones. The first one was figuring out how to keep the webpage background as it is, while adding new posts, like specific lines of code that doesn't affect the background, or get added in the wrong place ect. The next one was databases. Oh my god, this is such a challenge for no reason. Unfortunately I never got past this one, but its on my bucket list. Another thing was the ajax part. I thought it would be easy, just put a couple lines of code, but you have specify where it should constantly be updating? Also the part where I had to add the Username to the page, was slightly hard because how much I had to move it around.

## What made me proud
I was so happy that it actually worked. All parts of the website functioned together, and even though it might have been a bit sloppy, I'm just happy I was able to get it finished.

## What I have learnt
So so much actually. I learned a lot about how java servlets work, how its looked down upon to use java scriptlets in a jsp page but I did anyways. 
1. I learnt all the components of classes within html, like for the css and js. 
2. I learnt so much about sql, that I might try to incorporate it in my next hackathon.
3. I learnt about some xml, to redirect the jsp page to the servlet.
4. I also learnt some javascript and ajax. 
5. Maybe I learned too much. hah

## What's next for Comic Ranch
There is so much. This website is not even close to half of its full potential. You could clean up the css, you could add more servlets to make it run faster, you can add more pages to make it a nicer website. Also you can add sql, not just for login and storing images, but storing posts as a whole. And not just that, but associating posts with users, have another database for users so you can check out your favorite creators. Also function to subscribe to certain creators. Maybe advertisements on the side so small creators can make some ad revenue. Also you can make your comics cost money, and grow a community with this website. And not just website. You can throw everything that I have said onto an app. Like an app on an iPhone using Swift, for maybe on Android using Kotlin. There is so much you can add to this, its kinda crazy how little I have built, but much I have started.

video thingi:https://youtu.be/uK645-CqiRY
