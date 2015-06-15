// $(function () {
//
//   // Look for some element on your page, and if it doesn't
//   // exist, exit. This prevents your code from running on
//   // the wrong page (e.g. the "Take survey" page)
//   if (!$('.question-container').length) {
//     return;
//   }
//
//   // TODO: edit form page stuff goes here...
//
//   $('form').submit(function (e) {
//     // prevent form from submitting
//       e.stopPropagation();
//       e.preventDefault();
//
//       // grab user input & clear form
//       var inputValue = $('#questionInput').val();
//       $('#questionInput').val('');
//
//       // variable for li HTML. the first time it runs it should have an id of ruby-0.
//       var templateHtml = $('#li-template').html();
//
//       // add that LI to the DOM
//       $('.question-container').append(templateHtml);
//
//       // get the id of the last LI item on the page, which is the one we just added to the DOM
//        var fooID = $( '.question-container li:last-child' ).attr('id');
//       console.log(fooID);
//      // pass it to a function that will return that id+1 so it's always unique
//       var newID = uniqueID(fooID);
//
//       // LI already exists on the page with ruby-X ID, grab it and change ID to new one
//       $('.question-container li:last-child').attr('id', newID);
//
//         // stick the content into the LI we just added to the page
//       $('#'+newID).append(inputValue);
//
//       // now change the templateHtml script to also reflect this new ID so it is caught in the loop
//       // and each submission generates a new ID for each question
//       $('#li-template').html('<li class="question-preview" id="'+newID+'"></li>');
//   });
//
//   // write a function that grabs the question container ID and changes it to be unique each time
//   function uniqueID(id) {
//      id = id.split(''); // turn class into an array
//      var alpha =  $(id).splice(id.length-1, 1); // get last index of the array and put in var alpha
//      id.splice(id.length-1,1); // actually remove that last index from the array
//      var counterNumber = (parseInt(alpha) + 1).toString(); // convert string into number,add 1, convert back to string
//      id.push(counterNumber); // add to the array
//      var a = id.join(''); // turn it back into a string
//      return a; // return this new ID as a string
//    }
//
// });
