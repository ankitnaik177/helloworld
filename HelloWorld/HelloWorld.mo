within HelloWorld;

model HelloWorld "A simple model with a differential equation"
  Real x(start = 1);
equation
  der(x) = -x;
  annotation(experiment(StartTime = 0.0, StopTime = 10), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, fillColor = {80, 135, 0}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, lineThickness = 0, extent = {{-100, -100}, {100, 100}}, radius = 25), Text(visible = true, origin = {0, 4.615}, textColor = {255, 255, 255}, extent = {{-90, -4.615}, {90, 55.385}}, textString = "Hello", fontName = "Arial"), Text(visible = true, origin = {-6.108, -54.252}, textColor = {255, 255, 255}, extent = {{-83.892, -5.748}, {96.108, 54.252}}, textString = "World", fontName = "Arial")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Text(visible = true, origin = {1.653, 13.473}, extent = {{-141.653, -13.473}, {138.347, 19.084}}, textString = "This is a textual model.", fontSize = 26, fontName = "Arial"), Text(visible = true, origin = {1.653, -19.084}, extent = {{-141.653, -13.473}, {138.347, 19.084}}, textString = "Please select the Modelica Text View to see the model code.", fontSize = 26, fontName = "Arial")}), Documentation(info = "<html>
<p>There is a long tradition that the first example in any computer language is a trivial program printing the string \"Hello World\". Since Modelica, the language used in System Modeler, is an equation-based language, printing a string does not make much sense. Instead our Hello World Modelica program solves a trivial <em>differential equation:</em></p>
<p><img src=\"modelica://IntroductoryExamples/Resources/HelloWorld/differential-eq.png\" style=\"width:0.486667in\" alt=\"\" /></p>
<p>The variable <em>x</em> in this equation is a dynamic variable (here also a state variable) that can change value over time. The time derivative <img src=\"modelica://IntroductoryExamples/Resources/HelloWorld/x-dot.png\" style=\"width:0.0833333in; vertical-align:middle;\" alt=\"\" /> is the derivative of <em>x</em>, represented as <em>der(x)</em> in Modelica. The following code is used to implement this model:</p>
<pre>
<strong>model</strong> HelloWorld&nbsp;\"A differential equation\"
  Real x(<strong>start</strong>=1);
<strong>equation</strong>
  der(x) = -x;
<strong>end</strong> HelloWorld;
</pre>
<p>The picture below shows the variable <em>x</em> in a ten second simulation:</p>
<p style=\"text-align: center;\"><img src=\"modelica://IntroductoryExamples/Resources/HelloWorld/HelloWorld.png\" style=\"width:600px\" alt=\"\" /></p>
<p>For a step by step tutorial see <a href=\"wsm:///ref/GettingStarted/HelloWorld.html\">Hello World</a>.</p>
</html>", figures = {Figure(title = "Simple differential equation", identifier = "x", preferred = true, plots = {Plot(curves = {Curve(y = x)})}, caption = "Solution to the simple differential equation der(x) = -x, where x has a start value of 1.")}));
end HelloWorld;
