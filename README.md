# Augmented-Reality

ARKit is supported on all Apple devices that run iOS 11 and that have A11 (the newest), A10, or A9 chips.

Steps to integrate ARKit in your iOS application :
1. Creating a Project :
2. Adding ARKit SceneKit View
3. Enabling the Camera
4. Adding a 3D Object
5. Displaying a 3D Object in the scene
6. Setting up Control buttons

Step 1: Creating a Project
Create an empty project by selecting a single view Application.
 
Step 2: Adding ARKit SceneKit View to your storyboard controller
1. You need to add ARKit SceneKit View to your Storyboard. ARSCNView is used for displaying virtual 3D content on a camera background. Don’t forget to adjust the constraints so that ARSCNView works on the full screen of the device.

2. Create an IBOutlet in the ViewController.

3. This will show an error, So you need to add ARKit Framework to your project and import it to the view controller

Step 3: Enabling the Camera
 To enable rendering, ARKit needs to use an iOS device’s sensors (camera, accelerometer, and gyroscope).
1. AR mobile application needs to use the camera. To allow it to do so, set up the scene in the viewDidLoad method and run the session in the viewWillAppear method.

2. When users launch an augmented reality mobile application, they must allow the app to use the camera. To request access to the camera from a user, you need to add a new row to the Info.plist file: "Privacy – Camera Usage Description".

3. To check that you’ve done everything right, run your AR app; if you see the camera working, then you’re on the right track.

Step 4: Adding a 3D Object
You can pick any virtual object you want, but let’s check what file formats are supported by ARKit.
1. ARKit SceneKit View supports several file formats, namely .dae (digital asset exchange), .abc (alembic), and .scn (SceneKit archive). When .dae or .abc files are added to an Xcode project, however, the editor automatically converts them to SceneKit’s compressed files that retain the same extensions. To serialize a SCNScene object, create a .scn file by converting the initial .dae or .abc file.

2. Here, use a .dae object and place it in the project. Open it with SceneKit editor tool, go to an editor and convert it to the scene. Place .dae and .scn in one folder inside your project directory.

As you can see, both .dae and .scn files are present in the Objects folder.

 

Step 5: Displaying a 3D Object in the Scene
1. The object has already been added to our project, now we need to add the object to the SCNScene.

2. Since we’re using SceneKit, a 3D object model must be a subclass of SCNNode, so we need to create a new class (we’ve called it Drone, though you may call it whatever you like) and load the initial file containing the object (in our case, Drone.scn). Here’s the code we used to add the quadcopter to the scene.


 If we run our augmented reality mobile app now, we’ll see a quadcopter in its default position on our iPhone’s screen. Needless to say, if you can’t see a 3D object, go back and check whether you’ve done everything correctly.

 The default position of the 3D object looks unnatural, so please change the parameters like given. (To change the parameters, go to scene object, click on the object and change it.)

 
 
Step 6: Setting up Control buttons (To Rotate and To Move)
The application seems to be working and the quadcopter is displayed in the scene, but there’s still one major thing to do. So far, the quadcopter is a motionless AR object that looks nice but doesn’t move. It’s time to add controls.

We will place 2 controls in the bottom, One set of controls is responsible for moving the quadcopter up and down and left and right, while the other rotates it and moves the quadcopter forward and backward. To set up the controls, you need to use SCNAction and two methods.

The moveBy(x:y:z: duration:) method is in charge of creating the action that moves the node relative to its current position.

x – the distance to move the node in the X direction of its parent node’s local coordinate space
y – the distance to move the node in the Y direction of its parent node’s local coordinate space
z – the distance to move the node in the Z direction of its parent node’s local coordinate space
duration – The duration of the animation (in seconds)
The rotateTo(x:y:z: duration:) method is responsible for creating an action that rotates the node in principal angles.

x – for rotating the node counterclockwise around the X-axis of its local coordinate space (measured in radians)
y – for rotating the node counterclockwise around the Y-axis of its local coordinate space (measured in radians)
z – for rotating the node counterclockwise around the Z-axis of its local coordinate space (measured in radians)
duration – The duration of the animation (in seconds)
http://wiki.promact.com/link/57#bkmrk-to-put-the-buttons-a
  
To put the buttons and long-press gesture please check the code. Also if it is set up completely you can check all the actions.
