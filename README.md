# Basic Sunlight Simulator

A basic sunlight simulator plugin for Godot 4.5

## What does it do ?

Simulate the sun across the day by rotating a directional light and a sprite / 3D
model in a circular motion. It also uses gradient to compute varying colors
across the day.

## How to use it

### Simple usage

Drop the sun directory inside your project and instanciate the sun scene at
the root of a scene.

### Tinkering

* Distance: the distance between the origin of the light and the sun model. Mainly
used for disposition purposes, as the size of the sun will be relative to the distance
* Rotation degree: the speed and direction to which the sun rotate
* Color: the color of the light emited
* Render 3d: choose which model of the sun to display
* Color Gradient: enable the dynamic changes of color
* Gradient: specify the color gradient to use
