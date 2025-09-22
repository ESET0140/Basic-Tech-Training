import React, { useRef, useState } from 'react';

function ColorBoxHighlighter() {
  
  const redRef = useRef(null);
  const greenRef = useRef(null);
  const blueRef = useRef(null);
  
  
  const boxRefs = [redRef, greenRef, blueRef];
  

  const [currentIndex, setCurrentIndex] = useState(-1);

  const handleHighlightNext = () => {
    
    if (currentIndex >= 0) {
      boxRefs[currentIndex].current.style.border = '';
    }
  
    const nextIndex = (currentIndex + 1) % boxRefs.length;

    boxRefs[nextIndex].current.style.border = '3px solid yellow';
 
    setCurrentIndex(nextIndex);
  };

  return (

    <div style={{ padding: '20px' }}>
        <center>
        <div style={{ display: 'flex', gap: '10px' }}>
            <div
            ref={redRef}
            style={{
                width: '100px',
                height: '100px',
                backgroundColor: 'red',
            }}
            />
            <div
            ref={greenRef}
            style={{
                width: '100px',
                height: '100px',
                backgroundColor: 'green',
            }}
            />
            <div
            ref={blueRef}
            style={{
                width: '100px',
                height: '100px',
                backgroundColor: 'blue',
            }}
            />
        </div>
        <button onClick={handleHighlightNext} style={{ marginTop: '20px' }}>
            Highlight Next Box
        </button>
        </center>
    </div>
  );
}

export default ColorBoxHighlighter;