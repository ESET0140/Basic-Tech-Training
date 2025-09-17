
function Buttoncomponent() {
  const buttonhandler = () => {
    console.log("Hello World");
  };
  return (
    <button onClick={buttonhandler}>click me</button>
  );
}

export default Buttoncomponent;