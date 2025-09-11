import {useState} from 'react'

const Counter = () => {

    const [counter, setCounter] = useState(0)
    console.log(counter)

    const handleOnClick = (e) => {
        if(e.target.value == 2){
            setCounter(counter - 1) 
            console.log("increment button ",counter)
        }
        else{
            setCounter(counter + 1)
            console.log("decrement button ",counter)

        }
        // counter + 1;
    }

    // const handleDecrement = () => {
    //     setCounter(counter - 1) 
    //     // counter - 1
    //     console.log(counter)
    // }

    return ( 
        <div>
            <h1>{counter}</h1> 
            <button onClick={handleOnClick} value={1} >click +1</button>   
            <button onClick={handleOnClick} value={2}>click -1</button>
        </div>
    )
}

export default Counter; 