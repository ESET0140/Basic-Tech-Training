import React, { useState } from 'react';
// const dummyJson = {
//   "firstName": "John",
//   "lastName": "Doe",
//   "age": 25
// }

export default function FormEventComponent() {
   // console.log(dummyJson);
  
    const[username, setUsername]=useState("");
   const onChangehandler = (event) => {
      setUsername(event.target.value);
    //   prompt("This is alert");
   };
   return (
      <div>
         <input type='text' value={username}placeholder="enter your username" onChange={onChangehandler} />
      </div>
   );
}