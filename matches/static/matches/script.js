function start() {
	api();
	window.setInterval("api()",30000);
}

function api(){
	// Create a request variable and assign a new XMLHttpRequest object to it.
	var request = new XMLHttpRequest();

	// Open a new connection, using the GET request on the URL endpoint
	request.open('GET', 'http://api.steampowered.com/IDOTA2Match_570/GetLiveLeagueGames/v0001/?key=0332C4C0565AA9780CBD714E1C16619A&language=en_us&format=json', true);

	request.onload = function () {
	  // Begin accessing JSON data here
		var data = JSON.parse(this.response);
		if (request.status >= 200 && request.status < 400) {

			str = "";
			cnt = 0;
			data.result.games.forEach(game => {
				if(game.radiant_team != null && game.dire_team != null)
				{    
					match_id = game.match_id
					r_name = game.radiant_team.team_name;
					d_name = game.dire_team.team_name;


					if(game.scoreboard == null)
					{
						r_score = 0;
						d_score = 0;
						time_min = 0;
						time_sec = 0;
					}
					else
					{
						r_score = game.scoreboard.radiant.score;
						d_score = game.scoreboard.dire.score;
						time = Math.round(game.scoreboard.duration);
						time_min = Math.floor(time/60);
						time_sec = time%60;
					}
					if(r_score == null) r_score = 0;
					if(d_score == null) d_score = 0;
					if(time_min == null || time_sec == null)
					{
						time_min = 0;
						time_sec = 0;
					}

	    			str +=  "<article class='media content-section'>" +
								"<div class='media-body'>" +
									"<h2><a class='article-title' href='#'>" +
									"</a><span class='float-left'>" + r_name +
									"</span><span class='float-right'>" + d_name +
									"</span></h2>" +
									"<br /> <hr />" +
									"<p class='article-content' style='text-align: center;'>Score: " + r_score + " : " + d_score + "<br>Time " + time_min + " : " + time_sec + "<br />" +
									"<a class='btn btn-outline-info mb-1' onclick='bet(" + match_id + "," + 1 + "," + cnt + ");'>Bet</a>" +
									"<input type='text' placeholder='20' id='coin" + cnt + "'>" +
									"<a class='btn btn-outline-info mb-1' onclick='bet(" + match_id + "," + 2 + "," + cnt++ + ");' >Bet</a></p>" +
								"</div>" +
							"</article>"


	    		}
	 		});
	 		document.getElementById("neki_id").innerHTML = str;
	    }
	    else document.write("error");
	  
	}



	// Send request
	request.send();
}

function bet(match_id, result)
{
	//console.log(match_id+ " " + result + " " + document.getElementById("coin" + cnt).value);
	window.location.href = "make_bet.html?match_id=" + match_id + "&result=" + result + "&coin=" + document.getElementById("coin").value;
}