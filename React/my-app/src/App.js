import './App.css';
import { useState } from 'react';
function App() {
  

const [counter,setCounter]=useState(0);
   const Increment=()=>{
    setCounter(counter+1);
   }
  const Decrement=()=>{
    setCounter(counter-1);
   }
  
   <button>Click Me</button>
   return (
    <div className="App">
        <h1>Counter:{counter}</h1>
        <button onClick={Increment}>Increment</button>
        <button onClick={Decrement}>Decrement</button>
      </div>

  );
}

export default App;
