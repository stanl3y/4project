exampleA1 = () -> (
  variables := [s,t,x,y];
  R := QQ(variables);

  return new HashTable from {
    "name" => "A1",
    "variables" => variables,
    "R" => R,

    "parametrisation" => ideal(s^2 - x, s^3 + s*t - y),

    "sourceCoords" => {s},
    "targetSpace" => {x,y},
    "targetTime" => {t},
  };
)

exampleA2 = () -> (
  variables := [r,s,t,x,y,z];
  R := QQ(variables);

  return new HashTable from {
    "name" => "A2",
    "variables" => variables,
    "R" => R,

    "parametrisation" => ideal(r - x, s^2 - y, s*(r^2 + s^2 + t) -z),

    "sourceCoords" => {r,s},
    "targetSpace" => {x,y,z},
    "targetTime" => {t}
  };
)

exampleB1 = () -> (
  variables := [x,y,u,v,a,b,c];
  R := QQ(variables);

  return new HashTable from {
    "name" => "B1",
    "variables" => variables,
    "R" => R,

    "parametrisation" => ideal(x-a, y^3+u*y - b, x*y + y^5 +v*y^2 - c),

    "sourceCoords" => {x,y},
    "targetSpace" => {a,b,c},
    "targetTime" => {u,v}
  }; 
)

exampleC1 = (k) -> (
  -- f : C → C2, f(x) = (x2,x2k+1) 
  -- with stable unfolding F(x,a) = (x2,x2k+1 + tx,t)

  variables := [x,t,a,b];
  R := QQ(variables);

  return params = myHash := new HashTable from {
    "name" => "C1",
    "variables" => variables,
    "R" => R,

    "parametrisation" => ideal(x^2 - a, x^(2*k+1) + t*x - b),

    "sourceCoords" => {x},
    "targetSpace" => {a,b},
    "targetTime" => {t},
  };
)

exampleC2 = (k) -> (
  -- f : C2 → C3, f(x,y)=(x,y2,y2k+1 +x2y)
  -- with stable unfolding
  -- F(x,y,u)=(x,y2,uy+y2k+1 +x2y,u)

  variables := [x,y,t,a,b,c];
  R := QQ(variables);

  return params = myHash := new HashTable from {
    "name" => "C2",
    "variables" => variables,
    "R" => R,
    
    "parametrisation" => ideal(x-a, y^2 - b, t*y + y^(2*k+1) + x^2*y - c),

    "sourceCoords" => {x,y},
    "targetSpace" => {a,b,c},
    "targetTime" => {t},
  };
)

exampleC3 = (k) -> (
  variables := [x,y,t,a,b,c];
  R := QQ(variables);

  return params = myHash := new HashTable from {
    "name" => "C3",
    "variables" => variables,
    "R" => R,
    
    "parametrisation" => ideal(x - a, y^2 - b, t*y + y^3 + x^k*y - c),

    "sourceCoords" => {x,y},
    "targetSpace" => {a,b,c},
    "targetTime" => {t},
  };
)

exampleC4 = () -> (
  variables := [x,y,u,v,a,b,c];
  R := QQ(variables);

  return new HashTable from {
    "name" => "C4",
    "variables" => variables,
    "R" => R,
    
    "parametrisation" => ideal(x - a, x*y + y^3 - b, x*y^2 + 4*y^4 + u*y^2 + v*y - c),

    "sourceCoords" => {x,y},
    "targetSpace" => {a,b,c},
    "targetTime" => {u,v},
  };
)

exampleC5 = () -> (
  variables := [x,y,p,q,r,s,t,a,b,c];
  R := QQ(variables);

  return new HashTable from {
    "name" => "C5",
    "variables" => variables,
    "R" => R,
    
    "parametrisation" => ideal(x^2 + p*y - a, y^2 + q*x - b, x^3 + x^2*y + x*y^2 - y^3 + r*x*y + s*x + t*y - c),

    "sourceCoords" => {x,y},
    "targetSpace" => {a,b,c},
    "targetTime" => {p,q,r,s,t},
  };
)

exampleC6 = () -> (
  variables := [x,y,z,u,v,w,a,b,c,d];
  R := QQ(variables);

  return new HashTable from {
    "name" => "C6",
    "variables" => variables,
    "R" => R,
    
    "parametrisation" => ideal(x - a, y^2 + x*z + x^2*y - b, y*z + u*y + v*z - c, z^2 + y^3 + w*y - d),

    "sourceCoords" => {x,y,z},
    "targetSpace" => {a,b,c},
    "targetTime" => {u,v,w},
  };
)

exampleD1 = () -> (
  variables := [x,y,z,u,a,b,c,d];
  R := QQ(variables);

  return new HashTable from {
    "name" => "D1",
    "variables" => variables,
    "R" => R,

    "parametrisation" => ideal(x - a, y - b, z^3 + x*z - c, z^4 + y*z + u*z^2 - d),

    "sourceCoords" => {x,y,z},
    "targetSpace" => {a,b,c,d},
    "targetTime" => {u},
  }
)

exampleD2a = () -> (
  variables := [x,y,z,u,a,b,c,d];
  R := QQ(variables);

  return new HashTable from {
    "name" => "D2a",
    "variables" => variables,
    "R" => R,

    "parametrisation" => ideal(x - a, y - b, z^3 + x*z - c, z^5 + y*z + u*z^2 - d),

    "sourceCoords" => {x,y,z},
    "targetSpace" => {a,b,c,d},
    "targetTime" => {u},
  }
)

exampleD2b = () -> (
  variables := [x,y,z,u,v,a,b,c,d];
  R := QQ(variables);

  return new HashTable from {
    "name" => "D2b",
    "variables" => variables,
    "R" => R,

    "parametrisation" => ideal(x - a, y - b, z^3 + x*z - c, z^5 + y*z + u*z^2 + v*x*z^2 - d),

    "sourceCoords" => {x,y,z},
    "targetSpace" => {a,b,c,d},
    "targetTime" => {u,v},
  }
)

exampleD3 = () -> (
  variables = [x,y,z,u,a,b,c,d];
  R := QQ(variables);

  return new HashTable from {
    "name" => "D3",
    "variables" => variables,
    "R" => R,

    "parametrisation" => ideal(x - a, y - b, z^3 + x*z - c, z^7 + y*z + u*z^2 - d),

    "sourceCoords" => {x,y,z},
    "targetSpace" => {a,b,c,d},
    "targetTime" => {u},
  }
)