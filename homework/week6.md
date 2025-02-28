### Task 1: **Implement a SwiftUI component that uses a custom Layout**

The component should accept a list of items (children) which should be positioned in a circle.
The radius can be defined when the layout is created.

### Task 2: **Implement a full screen popup**

Implement an overlay, that can be triggered with a change of a state and displays a pop-up window in the middle of the screen.
The component can block all the clicks until it's closed.

### Task 3: **Improved fullscreen popup**

The compoent should be able to render one button with a label or two buttons.
There should be a callback that's invoked when a button is clicked (tapped).

### Task 4: **Custom JSON***

> Requires `URLSession` knowledge.

Implement a simple application that fetches data from `https://hacker-news.firebaseio.com`
Use the Postman file from `https://www.postman.com/postman/hacker-news-api/collection/s4xu5iv/hackernews-api`.

The two requests that should be made are:
https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty -> returns an array of ids.
For any ID you should do the following request:
https://hacker-news.firebaseio.com/v0/item/33678808.json\?print\=pretty -> the id should be valid.

### Task 5: **Render list of custom objects***

Once the data from Task 4 is fetched render that in a list on the screen. 
Once an item is picked, open the news. 
Once a news is clicked, then open an external browser. 