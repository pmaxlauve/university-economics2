console.log(uData);

const data = {
    name: '2019 US Employment',
    color: 'magenta',
    children: [{
      name: 'Employed',
      color: 'yellow',
      size: 232152,
      children: [{
        name: "Male",
        color: "blue",
        size: 120902
      }, {
        name: "Female",
        color: "pink",
        size: 111253


      }
    ]
    },
      {
        name: 'Unemployed',
        color: 'red',
        children: [
          {
            name: "Male",
            color: "blue",
            size: 3358

          }, {
            name: "Female",
            color: "pink",
            size: 3243

    
    
          }
        
        ]
    }]
    
  };

  Sunburst()
    .data(data)
    .size('size')
    .color('color')
    .radiusScaleExponent(1)
    (document.getElementById('chart'));

    