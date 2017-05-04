
var typeEntry="";
var infoEntry="";
var idType=[];
function showListMarkers(){
	if (typeof infoMarkers != 'undefined'){
infoMarkers.forEach(function(entry) {
if(infoLastMarkers.indexOf(entry.id)==-1){
	typeEntry=entry.type;
	infoEntry=(entry.info).replace('""', "");
var temp={"id":entry.id, "type":entry.type};

idType.push(temp);
    jQuery("#sidebar").append(jQuery("<div class='panel panel-default' id='"+entry.id+"d'><div class='panel-heading'>Type: "+entry.type+"</div><div class='panel-body' >Info:"+entry.info+"<br><br><button id='"+entry.id+"' class='button'  type='button' onclick='showMarker("+entry.id+","+entry.lat+","+entry.lng+");'>Show</button><button id='"+entry.id+"' class='button'  type='button' onclick='changeStatus("+entry.id+");'>Add </button><button id='"+entry.id+"' class='button' onclick='removeMarker("+entry.id+")' >Remove</button><br></div></div>"));
   infoLastMarkers.push(entry.id);
   };
});
infoMarkers=[];
}

}



function setIcon(id){

	var icon;
var type=getType(id);

	  if (type==="watter") {
	   icon = 'icons/watter.png';

  }
  if (type==="trash") {
	   icon ='icons/poo.png';
  }
  if (type === "dirtywatter") {
	   icon = 'icons/poison.png';
  }

  if (type === "dangerous") {
     icon = 'icons/dangerous.png';
  }

	return icon;
}

function getType(id){
    var type;

idType.forEach(function(entry) {
  if(entry.id==id){

    type=entry.type;
  }
});
return type;
  }; 




function showMarker(id,lat,lng){

var icon=setIcon(id);

var position={"lat":lat,"lng":lng};
var button=document.getElementById(id);


    map = new google.maps.Map(document.getElementById('map'), {
          zoom: 8,
       //   mapTypeId: google.maps.MapTypeId.SATELLITE,
          center: {lat: lat, lng: lng}

        });





if(button.innerText==="Show"){
button.innerText=" Hide ";

 addMarkerWithTimeout(position, 200,icon,id,infoEntry);

}else{
 button.innerText="Show"; 
//clearMarkers();
clearOneMarker(id);
}



}



function changeStatus(id){
jQuery.ajax({
        type: "POST",
        url: "insert-marker.php",
        data:{info:id},
        success: function(data){
           console.log("dodano");
        },
        error: function(e){
            console.log(e.message);
        }
});
jQuery("#"+id+"d").remove();
}

function removeMarker(id){
jQuery("#"+id+"d").remove();	
}

