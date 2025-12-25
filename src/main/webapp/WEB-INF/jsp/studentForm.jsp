<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
  <head>
    <title>Student Information System</title>
    <style>
      body {
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        background: #e4f2f4; 
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
        padding: 20px;
        box-sizing: border-box;
      }

      .form-container {
        background-color: #fff;
        width: 550px; /* Adjusted width */
        padding: 30px; /* Adjusted padding */
        border-radius: 10px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      }

      .header {
        background: linear-gradient(
          135deg,
          #43a047,
          #1b5e20
        ); /* Green gradient header */
        color: white;
        padding: 20px;
        text-align: center;
        border-radius: 8px 8px 0 0;
        margin-bottom: 20px;
      }

      .header h1 {
        margin: 0;
        font-size: 24px;
      }

      .header p {
        margin-top: 5px;
        font-size: 14px;
        opacity: 0.8;
      }

      .form-row {
        display: flex;
        align-items: center;
        margin-bottom: 15px;
      }

      .form-row label {
        width: 150px; /* Adjust width for label */
        margin-right: 15px;
        font-weight: bold;
        color: #333;
        font-size: 14px;
        text-align: left; /* Align label text to the left */
      }

      .form-row input[type="text"],
      .form-row input[type="number"] {
        flex: 1;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 14px;
        box-sizing: border-box;
      }

      .form-row input[type="text"]:focus,
      .form-row input[type="number"]:focus {
        outline: none;
        border-color: #4caf50; /* Green focus color */
        box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
      }

      .button-container {
        display: flex;
        gap: 10px;
        margin-top: 20px;
      }

      button {
        flex: 1;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        color: white;
        font-weight: bold;
        cursor: pointer;
        font-size: 14px;
        transition: background-color 0.3s ease;
      }

      button#calculateBtn {
        background-color: #2196f3; /* Blue calculate button */
      }

      button#calculateBtn:hover {
        background-color: #1976d2;
      }

      button#submitBtn {
        background-color: #4caf50; /* Green submit button */
      }

      button#submitBtn:hover {
        background-color: #388e3c;
      }

      button#clearBtn {
        background-color: #f44336; /* Red clear button */
      }

      button#clearBtn:hover {
        background-color: #d32f2f;
      }

      .status-message {
        margin-top: 15px;
        padding: 10px;
        background-color: #e0f7fa;
        border: 1px solid #b2ebf2;
        color: #0097a7;
        border-radius: 5px;
        text-align: center;
        font-size: 12px;
      }
    </style>
  </head>
  <body>
    <div class="form-container">
      <div class="header">
        <h1>Student Information System</h1>
        <p>Track and manage student performance</p>
      </div>
      <form id="studentForm" action="AddStudent" method="post">
        <div class="form-row">
          <label for="name">Student Name:</label>
          <input type="text" name="name" id="name" required />
        </div>
        <div class="form-row">
          <label for="regNo">Register Number:</label>
          <input type="text" name="regNo" id="regNo" required />
        </div>
        <div class="form-row">
          <label for="marks1">Marks 1:</label>
          <input
            type="number"
            name="marks1"
            id="marks1"
            min="0"
            max="100"
            required
          />
        </div>
        <div class="form-row">
          <label for="marks2">Marks 2:</label>
          <input
            type="number"
            name="marks2"
            id="marks2"
            min="0"
            max="100"
            required
          />
        </div>
        <div class="form-row">
          <label for="percentage">Percentage:</label>
          <input type="text" name="percentage" id="percentage" readonly />
        </div>
        <div class="form-row">
          <label for="grade">Grade:</label>
          <input type="text" name="grade" id="grade" maxlength="2" readonly />
        </div>

        <div class="button-container">
          <button
            type="button"
            id="calculateBtn"
            onclick="calculatePercentageAndGrade()"
          >
            Calculate
          </button>
          <button type="submit" id="submitBtn">Submit</button>
          <button type="reset" id="clearBtn">Clear</button>
        </div>
      </form>
      <div class="status-message">
        Connected to database successfully. Ready to accept student information.
      </div>
    </div>

    <script>
      function calculatePercentageAndGrade() {
        const marks1 = parseInt(document.getElementById("marks1").value) || 0;
        const marks2 = parseInt(document.getElementById("marks2").value) || 0;

        if (marks1 > 100 || marks2 > 100 || marks1 < 0 || marks2 < 0) {
          alert("Marks should be between 0 and 100.");
          return;
        }

        const percentage = ((marks1 + marks2) / 200) * 100;
        document.getElementById("percentage").value = percentage.toFixed(2);

        let grade;
        if (percentage >= 90) grade = "A+";
        else if (percentage >= 80) grade = "A";
        else if (percentage >= 70) grade = "B";
        else if (percentage >= 60) grade = "C";
        else if (percentage >= 50) grade = "D";
        else grade = "F";

        document.getElementById("grade").value = grade;
      }
    </script>
  </body>
</html>
