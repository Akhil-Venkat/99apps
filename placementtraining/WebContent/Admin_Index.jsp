<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="Common.Common_Things"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=Common_Things.url%>/css/Admin_Index.css">
</head>
<body>

	<div class="container">
		<form action="addQuestions" method="post">
			<fieldset>
				<legend style="text-decoration: underline; color: green">Quantitavive
					- Verbal - Logical Form</legend>
				<div class="row">
					<div class="col-25">
						<label for="category">Category</label>
					</div>
					<div class="col-75">
						<div class="col-75">
							<select id="categoryname" name="categoryname"
								onchange="updateCategory(this.id, 'category_topic')">
								<option></option>
								<option value="aptitude">Aptitude</option>
								<option value="logical">Logical</option>
								<option value="verbal">Verbal</option>
							</select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="topic">Category-Topic</label>
					</div>
					<div class="col-75">
						<div class="col-75">
							<select id="category_topic" name="category_topic">
							</select>
						</div>
					</div>
				</div>


				<h3 style="color: green; text-decoration: underline;">Enter The
					Questions:</h3>
				<div id="questionblock">
					<div id="question">
						<input type="radio" name="category" value="simple"> Basic
						<input type="radio" name="category" value="complex">Complex
						<input type="radio" name="category" value="complicated">Complicated
						<br></br> <input type="radio" name="categorytype"
							value="q_service"> Service Level (Tcs,Wipro..) <input
							type="radio" name="categorytype" value="q_product">
						Product Level (Amazon,Microsoft..) <input type="radio"
							name="categorytype" value="q_govt"> Govt Level <br></br>
						<input type="radio" name="option" value="optionA">Option A
						<input type="radio" name="option" value="optionB">Option B
						<input type="radio" name="option" value="optionC">Option C
						<input type="radio" name="option" value="optionD">Option D<br></br>
						<label for="Question" name="questionlabel" id="questionlabel">Question:
							1</label>
						<textarea id="questiontextarea" name="question"
							placeholder="Enter the Question.." style="height: 50px"></textarea>

						<label for="Answer">Formula Method :</label>
						<textarea type="text" id="formulaans" name="formula_ans"
							placeholder="Enter the FORMULA SOLUTION.." style="height: 80px"></textarea>

						<label for="Answer">Shortcut Method :</label>
						<textarea type="text" id="shortcutans" name="shortcut_ans"
							placeholder="Enter the SHORTCUT SOLUTION.." style="height: 80px"></textarea>

						<textarea type="text" id="option1" name="option1"
							placeholder="A.)" style="height: 40px; width: 40%">	</textarea>
						<textarea type="text" id="option2" name="option2"
							placeholder="B.)" style="height: 40px; width: 40%">	</textarea>
						<textarea type="text" id="option3" name="option3"
							placeholder="C.)" style="height: 40px; width: 40%">	</textarea>
						<textarea type="text" id="option4" name="option4"
							placeholder="D.)" style="height: 40px; width: 40%">	</textarea>
						<br></br>

						<hr></hr>
						<br></br>
					</div>
				</div>
				<!--close of questionblock Div-->

				<button type="button" onclick="addQuestionDiv()">Add
					Question</button>
				<br></br> <input type="submit" value="Submit"><br></br>
		</form>
	</div>
</body>

<script>
<!-- start of category block-->
	function updateCategory(s3, s4) {
		var s1 = document.getElementById(s3);
		var s2 = document.getElementById(s4);
		s2.innerHTML = " ";
		if (s1.value == "aptitude") {
			var optionArray = [ " ", "Problems on Trains", "Average",
					"Volume and Surface Area", "Numbers",
					"Problems on H.C.F and L.C.M", "Simplification",
					"Surds and Indices", "Chain Rule", "Boats and Streams",
					"Logarithm", "Stocks and Shares", "True Discount",
					"Odd Man Out and Series", "Time and Distance",
					"Time and Work", "Compound Interest", "Partnership",
					"Problems on Ages", "Clock", "Area",
					"Permutation and Combination", "Problems on Numbers",
					"Decimal Fraction", "Square Root and Cube Root",
					"Ratio and Proportion", "Pipes and Cistern",
					"Alligation or Mixture", "Races and Games", "Probability",
					"Banker's Discountight and Distance", "Simple Interest",
					"Profit and Loss", "Percentage", "Calendar", "" ];
		}

		else if (s1.value == "logical") {
			var optionArray = [ " ", "Number Series", "Verbal Classification",
					"Analogies", "Matching Definitions", "Verbal Reasoning",
					"Logical Games", "Statement and Assumption",
					"Statement and Conclusion", "Cause and Effect",
					"Logical Deduction", "Letter and Symbol Series",
					"Essential Part", "Artificial Language",
					"Making Judgments", "Logical Problems",
					"Analyzing Arguments", "Course of Action",
					"Theme Detection", "Statement and Argument" ];
		}

		else if (s1.value == "verbal") {
			var optionArray = [ " ", "Spotting Errors", "Antonyms",
					"Spellings", "Ordering of Words", "Sentence Improvement",
					"Ordering of Sentences", "Closet Test",
					"One Word Substitutes", "Change of Voice",
					"Verbal Analogies", "Synonyms", "Selecting Words",
					"Sentence Formation", "Sentence Correction",
					"Completing Statements", "Paragraph Formation",
					"Comprehension", "Idioms and Phrases", "Change of Speech" ];
		}

		for ( var option in optionArray) {
			var newOption = document.createElement('option');
			newOption.name = optionArray[option];
			newOption.value = optionArray[option];
			newOption.innerHTML = optionArray[option];
			s2.options.add(newOption);
		}

	} // close dropdownmenu

	var questionCount = 1;
	function addQuestionDiv() {

		document.getElementById('questionlabel').innerHTML = "Question: "
				+ (++questionCount);
		var div = document.createElement('div');
		div.innerHTML = document.getElementById('question').innerHTML;
		questionblock.append(div);
	}
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>