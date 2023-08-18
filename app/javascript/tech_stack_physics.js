document.addEventListener("DOMContentLoaded", function () {
  // Alias the module for easier referencing
  const Engine = Matter.Engine;
  const Render = Matter.Render;
  const World = Matter.World;
  const Bodies = Matter.Bodies;
  const Mouse = Matter.Mouse;
  const MouseConstraint = Matter.MouseConstraint;

  // Create the engine and renderer
  const engine = Engine.create();
  const render = Render.create({
    element: document.body,
    engine: engine,
    options: {
      width: window.innerWidth,
      height: window.innerHeight,
      wireframes: false,
    },
  });

  // Add the renderer to the DOM
  Render.run(render);
  Engine.run(engine);

  // Create the tech stack items as rectangles
  const jsBlock = Bodies.rectangle(100, 100, 80, 80, {
    render: { fillStyle: "white" },
    isStatic: false, // This ensures the blocks are affected by gravity and other forces
  });
  const tsBlock = Bodies.rectangle(200, 100, 80, 80, {
    render: { fillStyle: "white" },
    isStatic: false,
  });
  // ... Add more tech stack items in a similar manner ...

  // Add the blocks to the world
  World.add(engine.world, [jsBlock, tsBlock]); // ... continue adding other blocks...

  // Ground to make sure blocks don't fall indefinitely
  const ground = Bodies.rectangle(
    window.innerWidth / 2,
    window.innerHeight - 10,
    window.innerWidth,
    20,
    {
      isStatic: true,
      render: { fillStyle: "transparent" },
    }
  );
  World.add(engine.world, ground);

  // Add mouse control so blocks can be dragged
  const mouse = Mouse.create(render.canvas);
  const mouseConstraint = MouseConstraint.create(engine, {
    mouse: mouse,
    constraint: {
      render: { visible: false },
    },
  });

  World.add(engine.world, mouseConstraint);
  render.mouse = mouse;

  // Resize event to update the canvas size
  window.addEventListener("resize", function () {
    render.canvas.width = window.innerWidth;
    render.canvas.height = window.innerHeight;
  });
});
