document.addEventListener("DOMContentLoaded", function () {
    const startDateField = document.querySelector("#course_start_date");
    const weekdayField = document.querySelector("#course_weekday");
  
    if (startDateField && weekdayField) {
      startDateField.addEventListener("change", function () {
        const date = new Date(startDateField.value);
        if (!isNaN(date)) {
          weekdayField.value = date.getDay(); 
        }
      });
    }
  });
  