<!DOCTYPE html>
<html>
<head>
<title>PT Create</title>
<style> body{background-color: pink;}
h1{ color: brown;
                font-family: Cursive;
            font-size:30px;}
.red {
  color: red;
}
</style>
</head>
<body>

<h1>Study Planner</h1>
<form name="assignments">

<label>Description</label><br />
<input type="text" id=a description=""/><br />

<label>Task type</label><br />
<select id=b >
<option value="homework">Homework</option>
<option value="test">Test</option>
<option value="quiz">Quiz</option>
<option value="project">Project</option>
<option value="performance">Performance</option>
</select><br />

<label>Class</label><br />
<select id=c >
<option value="English">English</option>
<option value="UShistory">History</option>
<option value="math">Math</option>
<option value="compsci">Computer Science</option>
<option value="chem">Chemistry</option>
<option value="physics">Physics</option>
<option value="band">Jazz Band</option>
</select><br />

<label>Deadline (in how many days)</label><br />
<input type="number" id=d description=""/><br />

<label>Points worth</label><br />
<input type="number" id=e description=""/><br />


<input type="button" value="Add" onClick="addRow()" id="add"><br /><br />
<input type="reset" value="Cancel"/>

<p id=p>Done </p>




<table id="table" border="1">
    <tr>
        <th>Description</th>
        <th>Task Type</th>
        <th>Class</th>
        <th>Deadline</th>
        <th>Points Worth</th>
        <th>Checkbox</th>
    </tr>
</table>


      <script>

    
    
    
    
function addRow() {
   

    var table = document.getElementById("table");
    var row= document.createElement("tr");
    var td1 = document.createElement("td");
    var td2 = document.createElement("td");
    var td3 = document.createElement("td");
    var td4 = document.createElement("td");
    var td5 = document.createElement("td");
    var td6 = document.createElement('button');
    
 

    td1.innerHTML  = document.getElementById("a").value;
    td2.innerHTML  = document.getElementById("b").value;
    td3.innerHTML  = document.getElementById("c").value;
    td4.innerHTML  = document.getElementById("d").value;
    td5.innerHTML  = document.getElementById("e").value;
    for (var i=0; i<1000; i++){
    td6.setAttribute("onClick", "alert('Done')");}
    
    
      row.appendChild(td1);
    row.appendChild(td2);
    row.appendChild(td3);
    row.appendChild(td4);
    row.appendChild(td5);
    row.appendChild(td6);
   
    

 table.children[0].appendChild(row);
    }
  

</script>
</form>

