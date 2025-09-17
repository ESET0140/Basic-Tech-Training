
function MouseEvent(){
    
    return(
        <>
      <div
      style={{
        backgroundColor: "lightblue",
        color: "green",
        padding: "70px",
      }}
      onMouseEnter={() => {console.log("Mouse Entered")}}
      >WELCOME TO MOUSE EVENTS</div>
   </>
    );
    }
export default MouseEvent;