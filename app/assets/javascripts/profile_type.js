let studentButton = document.getElementById("stud-button");
let instructorButton = document.getElementById("instruct-button");
let adminButton = document.getElementById("admin-button");

let profileDiv = document.getElementById("profile-button-div");
let studentForm = document.getElementById("student-add");
let instructorForm = document.getElementById("instructor-add");
let adminForm = document.getElementById("admin-add");

console.log(studentButton);

studentButton.addEventListener("click", () => {
    studentForm.style.display = "block";
    profileDiv.style.display = "none";
});

instructorButton.addEventListener("click", () => {
    instructorForm.style.display = "block";
    profileDiv.style.display = "none";
});

adminButton.addEventListener("click", () => {
    adminForm.style.display = "block";
    profileDiv.style.display = "none";
});