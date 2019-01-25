package Modelica "Modelica Standard Library - Version 3.2.2"
extends Modelica.Icons.Package;

  package Blocks
  "Library of basic input/output control blocks (continuous, discrete, logical, table blocks)"
  import SI = Modelica.SIunits;
  extends Modelica.Icons.Package;

    package Interfaces
    "Library of connectors and partial models for input/output blocks"
      import Modelica.SIunits;
      extends Modelica.Icons.InterfacesPackage;

      connector RealInput = input Real "'input Real' as connector" annotation (
        defaultComponentName="u",
        Icon(graphics={
          Polygon(
            lineColor={0,0,127},
            fillColor={0,0,127},
            fillPattern=FillPattern.Solid,
            points={{-100.0,100.0},{100.0,0.0},{-100.0,-100.0}})},
          coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}},
            preserveAspectRatio=true,
            initialScale=0.2)),
        Diagram(
          coordinateSystem(preserveAspectRatio=true,
            initialScale=0.2,
            extent={{-100.0,-100.0},{100.0,100.0}}),
            graphics={
          Polygon(
            lineColor={0,0,127},
            fillColor={0,0,127},
            fillPattern=FillPattern.Solid,
            points={{0.0,50.0},{100.0,0.0},{0.0,-50.0},{0.0,50.0}}),
          Text(
            lineColor={0,0,127},
            extent={{-10.0,60.0},{-10.0,85.0}},
            textString="%name")}),
        Documentation(info="<html>
<p>
Connector with one input signal of type Real.
</p>
</html>"));

      connector RealOutput = output Real "'output Real' as connector" annotation (
        defaultComponentName="y",
        Icon(
          coordinateSystem(preserveAspectRatio=true,
            extent={{-100.0,-100.0},{100.0,100.0}}),
            graphics={
          Polygon(
            lineColor={0,0,127},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid,
            points={{-100.0,100.0},{100.0,0.0},{-100.0,-100.0}})}),
        Diagram(
          coordinateSystem(preserveAspectRatio=true,
            extent={{-100.0,-100.0},{100.0,100.0}}),
            graphics={
          Polygon(
            lineColor={0,0,127},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid,
            points={{-100.0,50.0},{0.0,0.0},{-100.0,-50.0}}),
          Text(
            lineColor={0,0,127},
            extent={{30.0,60.0},{30.0,110.0}},
            textString="%name")}),
        Documentation(info="<html>
<p>
Connector with one output signal of type Real.
</p>
</html>"));
      annotation (Documentation(info="<html>
<p>
This package contains interface definitions for
<b>continuous</b> input/output blocks with Real,
Integer and Boolean signals. Furthermore, it contains
partial models for continuous and discrete blocks.
</p>

</html>",     revisions="<html>
<ul>
<li><i>Oct. 21, 2002</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
       and Christian Schweiger:<br>
       Added several new interfaces.</li>
<li><i>Oct. 24, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       RealInputSignal renamed to RealInput. RealOutputSignal renamed to
       output RealOutput. GraphBlock renamed to BlockIcon. SISOreal renamed to
       SISO. SOreal renamed to SO. I2SOreal renamed to M2SO.
       SignalGenerator renamed to SignalSource. Introduced the following
       new models: MIMO, MIMOs, SVcontrol, MVcontrol, DiscreteBlockIcon,
       DiscreteBlock, DiscreteSISO, DiscreteMIMO, DiscreteMIMOs,
       BooleanBlockIcon, BooleanSISO, BooleanSignalSource, MI2BooleanMOs.</li>
<li><i>June 30, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Realized a first version, based on an existing Dymola library
       of Dieter Moormann and Hilding Elmqvist.</li>
</ul>
</html>"));
    end Interfaces;
  annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100.0,-100.0},{100.0,100.0}}), graphics={
        Rectangle(
          origin={0.0,35.1488},
          fillColor={255,255,255},
          extent={{-30.0,-20.1488},{30.0,20.1488}}),
        Rectangle(
          origin={0.0,-34.8512},
          fillColor={255,255,255},
          extent={{-30.0,-20.1488},{30.0,20.1488}}),
        Line(
          origin={-51.25,0.0},
          points={{21.25,-35.0},{-13.75,-35.0},{-13.75,35.0},{6.25,35.0}}),
        Polygon(
          origin={-40.0,35.0},
          pattern=LinePattern.None,
          fillPattern=FillPattern.Solid,
          points={{10.0,0.0},{-5.0,5.0},{-5.0,-5.0}}),
        Line(
          origin={51.25,0.0},
          points={{-21.25,35.0},{13.75,35.0},{13.75,-35.0},{-6.25,-35.0}}),
        Polygon(
          origin={40.0,-35.0},
          pattern=LinePattern.None,
          fillPattern=FillPattern.Solid,
          points={{-10.0,0.0},{5.0,5.0},{5.0,-5.0}})}), Documentation(info="<html>
<p>
This library contains input/output blocks to build up block diagrams.
</p>

<dl>
<dt><b>Main Author:</b></dt>
<dd><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a><br>
    Deutsches Zentrum f&uuml;r Luft und Raumfahrt e. V. (DLR)<br>
    Oberpfaffenhofen<br>
    Postfach 1116<br>
    D-82230 Wessling<br>
    email: <A HREF=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</A><br></dd>
</dl>
<p>
Copyright &copy; 1998-2016, Modelica Association and DLR.
</p>
<p>
<i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
</p>
</html>",   revisions="<html>
<ul>
<li><i>June 23, 2004</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Introduced new block connectors and adapted all blocks to the new connectors.
       Included subpackages Continuous, Discrete, Logical, Nonlinear from
       package ModelicaAdditions.Blocks.
       Included subpackage ModelicaAdditions.Table in Modelica.Blocks.Sources
       and in the new package Modelica.Blocks.Tables.
       Added new blocks to Blocks.Sources and Blocks.Logical.
       </li>
<li><i>October 21, 2002</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
       and Christian Schweiger:<br>
       New subpackage Examples, additional components.
       </li>
<li><i>June 20, 2000</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and
       Michael Tiller:<br>
       Introduced a replaceable signal type into
       Blocks.Interfaces.RealInput/RealOutput:
<pre>
   replaceable type SignalType = Real
</pre>
       in order that the type of the signal of an input/output block
       can be changed to a physical type, for example:
<pre>
   Sine sin1(outPort(redeclare type SignalType=Modelica.SIunits.Torque))
</pre>
      </li>
<li><i>Sept. 18, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Renamed to Blocks. New subpackages Math, Nonlinear.
       Additional components in subpackages Interfaces, Continuous
       and Sources. </li>
<li><i>June 30, 1999</i>
       by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       Realized a first version, based on an existing Dymola library
       of Dieter Moormann and Hilding Elmqvist.</li>
</ul>
</html>"));
  end Blocks;

  package Icons "Library of icons"
    extends Icons.Package;

    partial package Package "Icon for standard packages"

      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
            Rectangle(
              lineColor={200,200,200},
              fillColor={248,248,248},
              fillPattern=FillPattern.HorizontalCylinder,
              extent={{-100.0,-100.0},{100.0,100.0}},
              radius=25.0),
            Rectangle(
              lineColor={128,128,128},
              extent={{-100.0,-100.0},{100.0,100.0}},
              radius=25.0)}),   Documentation(info="<html>
<p>Standard package icon.</p>
</html>"));
    end Package;

    partial package InterfacesPackage "Icon for packages containing interfaces"
      extends Modelica.Icons.Package;
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={
            Polygon(origin={20.0,0.0},
              lineColor={64,64,64},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              points={{-10.0,70.0},{10.0,70.0},{40.0,20.0},{80.0,20.0},{80.0,-20.0},{40.0,-20.0},{10.0,-70.0},{-10.0,-70.0}}),
            Polygon(fillColor={102,102,102},
              pattern=LinePattern.None,
              fillPattern=FillPattern.Solid,
              points={{-100.0,20.0},{-60.0,20.0},{-30.0,70.0},{-10.0,70.0},{-10.0,-70.0},{-30.0,-70.0},{-60.0,-20.0},{-100.0,-20.0}})}),
                                Documentation(info="<html>
<p>This icon indicates packages containing interfaces.</p>
</html>"));
    end InterfacesPackage;
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Polygon(
              origin={-8.167,-17},
              fillColor={128,128,128},
              pattern=LinePattern.None,
              fillPattern=FillPattern.Solid,
              points={{-15.833,20.0},{-15.833,30.0},{14.167,40.0},{24.167,20.0},{
                  4.167,-30.0},{14.167,-30.0},{24.167,-30.0},{24.167,-40.0},{-5.833,
                  -50.0},{-15.833,-30.0},{4.167,20.0},{-5.833,20.0}},
              smooth=Smooth.Bezier,
              lineColor={0,0,0}), Ellipse(
              origin={-0.5,56.5},
              fillColor={128,128,128},
              pattern=LinePattern.None,
              fillPattern=FillPattern.Solid,
              extent={{-12.5,-12.5},{12.5,12.5}},
              lineColor={0,0,0})}), Documentation(info="<html>
<p>This package contains definitions for the graphical layout of components which may be used in different libraries. The icons can be utilized by inheriting them in the desired class using &quot;extends&quot; or by directly copying the &quot;icon&quot; layer. </p>

<h4>Main Authors:</h4>

<dl>
<dt><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a></dt>
    <dd>Deutsches Zentrum fuer Luft und Raumfahrt e.V. (DLR)</dd>
    <dd>Oberpfaffenhofen</dd>
    <dd>Postfach 1116</dd>
    <dd>D-82230 Wessling</dd>
    <dd>email: <a href=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</a></dd>
<dt>Christian Kral</dt>

    <dd>  <a href=\"http://christiankral.net/\">Electric Machines, Drives and Systems</a><br>
</dd>
    <dd>1060 Vienna, Austria</dd>
    <dd>email: <a href=\"mailto:dr.christian.kral@gmail.com\">dr.christian.kral@gmail.com</a></dd>
<dt>Johan Andreasson</dt>
    <dd><a href=\"http://www.modelon.se/\">Modelon AB</a></dd>
    <dd>Ideon Science Park</dd>
    <dd>22370 Lund, Sweden</dd>
    <dd>email: <a href=\"mailto:johan.andreasson@modelon.se\">johan.andreasson@modelon.se</a></dd>
</dl>

<p>Copyright &copy; 1998-2016, Modelica Association, DLR, AIT, and Modelon AB. </p>
<p><i>This Modelica package is <b>free</b> software; it can be redistributed and/or modified under the terms of the <b>Modelica license</b>, see the license conditions and the accompanying <b>disclaimer</b> in <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a>.</i> </p>
</html>"));
  end Icons;

  package SIunits
  "Library of type and unit definitions based on SI units according to ISO 31-1992"
    extends Modelica.Icons.Package;

    type Density = Real (
        final quantity="Density",
        final unit="kg/m3",
        displayUnit="g/cm3",
        min=0.0);
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics={
          Line(
            points={{-66,78},{-66,-40}},
            color={64,64,64}),
          Ellipse(
            extent={{12,36},{68,-38}},
            lineColor={64,64,64},
            fillColor={175,175,175},
            fillPattern=FillPattern.Solid),
          Rectangle(
            extent={{-74,78},{-66,-40}},
            lineColor={64,64,64},
            fillColor={175,175,175},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-66,-4},{-66,6},{-16,56},{-16,46},{-66,-4}},
            lineColor={64,64,64},
            fillColor={175,175,175},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-46,16},{-40,22},{-2,-40},{-10,-40},{-46,16}},
            lineColor={64,64,64},
            fillColor={175,175,175},
            fillPattern=FillPattern.Solid),
          Ellipse(
            extent={{22,26},{58,-28}},
            lineColor={64,64,64},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{68,2},{68,-46},{64,-60},{58,-68},{48,-72},{18,-72},{18,-64},
                {46,-64},{54,-60},{58,-54},{60,-46},{60,-26},{64,-20},{68,-6},{68,
                2}},
            lineColor={64,64,64},
            smooth=Smooth.Bezier,
            fillColor={175,175,175},
            fillPattern=FillPattern.Solid)}), Documentation(info="<html>
<p>This package provides predefined types, such as <i>Mass</i>,
<i>Angle</i>, <i>Time</i>, based on the international standard
on units, e.g.,
</p>

<pre>   <b>type</b> Angle = Real(<b>final</b> quantity = \"Angle\",
                     <b>final</b> unit     = \"rad\",
                     displayUnit    = \"deg\");
</pre>

<p>
Some of the types are derived SI units that are utilized in package Modelica
(such as ComplexCurrent, which is a complex number where both the real and imaginary
part have the SI unit Ampere).
</p>

<p>
Furthermore, conversion functions from non SI-units to SI-units and vice versa
are provided in subpackage
<a href=\"modelica://Modelica.SIunits.Conversions\">Conversions</a>.
</p>

<p>
For an introduction how units are used in the Modelica standard library
with package SIunits, have a look at:
<a href=\"modelica://Modelica.SIunits.UsersGuide.HowToUseSIunits\">How to use SIunits</a>.
</p>

<p>
Copyright &copy; 1998-2016, Modelica Association and DLR.
</p>
<p>
<i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
</p>
</html>",   revisions="<html>
<ul>
<li><i>May 25, 2011</i> by Stefan Wischhusen:<br/>Added molar units for energy and enthalpy.</li>
<li><i>Jan. 27, 2010</i> by Christian Kral:<br/>Added complex units.</li>
<li><i>Dec. 14, 2005</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Add User&#39;;s Guide and removed &quot;min&quot; values for Resistance and Conductance.</li>
<li><i>October 21, 2002</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and Christian Schweiger:<br/>Added new package <b>Conversions</b>. Corrected typo <i>Wavelenght</i>.</li>
<li><i>June 6, 2000</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Introduced the following new types<br/>type Temperature = ThermodynamicTemperature;<br/>types DerDensityByEnthalpy, DerDensityByPressure, DerDensityByTemperature, DerEnthalpyByPressure, DerEnergyByDensity, DerEnergyByPressure<br/>Attribute &quot;final&quot; removed from min and max values in order that these values can still be changed to narrow the allowed range of values.<br/>Quantity=&quot;Stress&quot; removed from type &quot;Stress&quot;, in order that a type &quot;Stress&quot; can be connected to a type &quot;Pressure&quot;.</li>
<li><i>Oct. 27, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>New types due to electrical library: Transconductance, InversePotential, Damping.</li>
<li><i>Sept. 18, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Renamed from SIunit to SIunits. Subpackages expanded, i.e., the SIunits package, does no longer contain subpackages.</li>
<li><i>Aug 12, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Type &quot;Pressure&quot; renamed to &quot;AbsolutePressure&quot; and introduced a new type &quot;Pressure&quot; which does not contain a minimum of zero in order to allow convenient handling of relative pressure. Redefined BulkModulus as an alias to AbsolutePressure instead of Stress, since needed in hydraulics.</li>
<li><i>June 29, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Bug-fix: Double definition of &quot;Compressibility&quot; removed and appropriate &quot;extends Heat&quot; clause introduced in package SolidStatePhysics to incorporate ThermodynamicTemperature.</li>
<li><i>April 8, 1998</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and Astrid Jaschinski:<br/>Complete ISO 31 chapters realized.</li>
<li><i>Nov. 15, 1997</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and Hubertus Tummescheit:<br/>Some chapters realized.</li>
</ul>
</html>"));
  end SIunits;
annotation (
preferredView="info",
version="3.2.2",
versionBuild=3,
versionDate="2016-04-03",
dateModified = "2016-04-03 08:44:41Z",
revisionId="$Id:: package.mo 9263 2016-04-03 18:10:55Z #$",
uses(Complex(version="3.2.2"), ModelicaServices(version="3.2.2")),
conversion(
 noneFromVersion="3.2.1",
 noneFromVersion="3.2",
 noneFromVersion="3.1",
 noneFromVersion="3.0.1",
 noneFromVersion="3.0",
 from(version="2.1", script="modelica://Modelica/Resources/Scripts/Dymola/ConvertModelica_from_2.2.2_to_3.0.mos"),
 from(version="2.2", script="modelica://Modelica/Resources/Scripts/Dymola/ConvertModelica_from_2.2.2_to_3.0.mos"),
 from(version="2.2.1", script="modelica://Modelica/Resources/Scripts/Dymola/ConvertModelica_from_2.2.2_to_3.0.mos"),
 from(version="2.2.2", script="modelica://Modelica/Resources/Scripts/Dymola/ConvertModelica_from_2.2.2_to_3.0.mos")),
Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}), graphics={
  Polygon(
    origin={-6.9888,20.048},
    fillColor={0,0,0},
    pattern=LinePattern.None,
    fillPattern=FillPattern.Solid,
    points={{-93.0112,10.3188},{-93.0112,10.3188},{-73.011,24.6},{-63.011,31.221},{-51.219,36.777},{-39.842,38.629},{-31.376,36.248},{-25.819,29.369},{-24.232,22.49},{-23.703,17.463},{-15.501,25.135},{-6.24,32.015},{3.02,36.777},{15.191,39.423},{27.097,37.306},{32.653,29.633},{35.035,20.108},{43.501,28.046},{54.085,35.19},{65.991,39.952},{77.897,39.688},{87.422,33.338},{91.126,21.696},{90.068,9.525},{86.099,-1.058},{79.749,-10.054},{71.283,-21.431},{62.816,-33.337},{60.964,-32.808},{70.489,-16.14},{77.368,-2.381},{81.072,10.054},{79.749,19.05},{72.605,24.342},{61.758,23.019},{49.587,14.817},{39.003,4.763},{29.214,-6.085},{21.012,-16.669},{13.339,-26.458},{5.401,-36.777},{-1.213,-46.037},{-6.24,-53.446},{-8.092,-52.387},{-0.684,-40.746},{5.401,-30.692},{12.81,-17.198},{19.424,-3.969},{23.658,7.938},{22.335,18.785},{16.514,23.283},{8.047,23.019},{-1.478,19.05},{-11.267,11.113},{-19.734,2.381},{-29.259,-8.202},{-38.519,-19.579},{-48.044,-31.221},{-56.511,-43.392},{-64.449,-55.298},{-72.386,-66.939},{-77.678,-74.612},{-79.53,-74.083},{-71.857,-61.383},{-62.861,-46.037},{-52.278,-28.046},{-44.869,-15.346},{-38.784,-2.117},{-35.344,8.731},{-36.403,19.844},{-42.488,23.813},{-52.013,22.49},{-60.744,16.933},{-68.947,10.054},{-76.884,2.646},{-93.0112,-12.1707},{-93.0112,-12.1707}},
    smooth=Smooth.Bezier),
  Ellipse(
    origin={40.8208,-37.7602},
    fillColor={161,0,4},
    pattern=LinePattern.None,
    fillPattern=FillPattern.Solid,
    extent={{-17.8562,-17.8563},{17.8563,17.8562}})}),
Documentation(info="<html>
<p>
Package <b>Modelica&reg;</b> is a <b>standardized</b> and <b>free</b> package
that is developed together with the Modelica&reg; language from the
Modelica Association, see
<a href=\"https://www.Modelica.org\">https://www.Modelica.org</a>.
It is also called <b>Modelica Standard Library</b>.
It provides model components in many domains that are based on
standardized interface definitions. Some typical examples are shown
in the next figure:
</p>

<p>
<img src=\"modelica://Modelica/Resources/Images/UsersGuide/ModelicaLibraries.png\">
</p>

<p>
For an introduction, have especially a look at:
</p>
<ul>
<li> <a href=\"modelica://Modelica.UsersGuide.Overview\">Overview</a>
  provides an overview of the Modelica Standard Library
  inside the <a href=\"modelica://Modelica.UsersGuide\">User's Guide</a>.</li>
<li><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes\">Release Notes</a>
 summarizes the changes of new versions of this package.</li>
<li> <a href=\"modelica://Modelica.UsersGuide.Contact\">Contact</a>
  lists the contributors of the Modelica Standard Library.</li>
<li> The <b>Examples</b> packages in the various libraries, demonstrate
  how to use the components of the corresponding sublibrary.</li>
</ul>

<p>
This version of the Modelica Standard Library consists of
</p>
<ul>
<li><b>1600</b> models and blocks, and</li>
<li><b>1350</b> functions</li>
</ul>
<p>
that are directly usable (= number of public, non-partial classes). It is fully compliant
to <a href=\"https://www.modelica.org/documents/ModelicaSpec32Revision2.pdf\">Modelica Specification Version 3.2 Revision 2</a>
and it has been tested with Modelica tools from different vendors.
</p>

<p>
<b>Licensed by the Modelica Association under the Modelica License 2</b><br>
Copyright &copy; 1998-2016, ABB, AIT, T.&nbsp;B&ouml;drich, DLR, Dassault Syst&egrave;mes AB, Fraunhofer, A.&nbsp;Haumer, ITI, C.&nbsp;Kral, Modelon,
TU Hamburg-Harburg, Politecnico di Milano, XRG Simulation.
</p>

<p>
<i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
</p>

<p>
<b>Modelica&reg;</b> is a registered trademark of the Modelica Association.
</p>
</html>"));
end Modelica;

package ModelInitalComponentsVariable
  "Model with changed partial models descriptions"
  import SI = Modelica.SIunits;

  package Intracranial

    package Translational

      package Examples

        model Gravitymodel2 "Model for Interfacing with Simulink"
          ModelInitalComponentsVariable.Intracranial.Translational.Experiments.Components_0.CsfFormation
            csfFormation1        annotation (Placement(visible=true,
                transformation(
                origin={-66,-2},
                extent={{-10,10},{10,-10}},
                rotation=-90)));
          ModelInitalComponentsVariable.Intracranial.Translational.Experiments.Components_0.StorageCSF
            storageCSF1(            C=3.68, p(start=9.1))
                                          annotation (Placement(visible=true,
                transformation(
                origin={0,-6},
                extent={{-10,10},{10,-10}},
                rotation=90)));
          ModelInitalComponentsVariable.Intracranial.Translational.Experiments.Components_0.Pressure_base
            pressure_base1 annotation (Placement(visible=true, transformation(
                origin={-66,-58},
                extent={{-10,-10},{10,10}},
                rotation=0)));
        Experiments.Components_0.Pressure_base pressure_base
          annotation (Placement(transformation(extent={{50,-76},{70,-56}})));
          Modelica.Blocks.Interfaces.RealOutput z
            annotation (Placement(transformation(extent={{30,-98},{50,-78}})));
          Experiments.Components_0.CsfAbsorptionGravity csfAbsorptionGravity(
            P=4.2,
            G=1,
            a1=16,
            Lcollapse=0.09,
            a=8,
            Lcvp=0.3)       annotation (Placement(transformation(
                extent={{-10,-10},{10,10}},
                rotation=90,
                origin={64,-20})));
          Experiments.Components_0.Resistance1 resistance1_1 annotation (
              Placement(transformation(
                extent={{10,-10},{-10,10}},
                rotation=-90,
                origin={64,26})));
          Modelica.Blocks.Interfaces.RealInput u annotation (Placement(
                transformation(extent={{-142,-10},{-102,30}})));
          Modelica.Blocks.Interfaces.RealInput u1
            annotation (Placement(transformation(extent={{86,14},{126,54}})));
        equation
          connect(pressure_base1.flowp, csfFormation1.inf) annotation (
            Line(points={{-66,-53.4},{-66,-12}},    color = {28, 108, 200}));
          connect(csfFormation1.inf, storageCSF1.out) annotation (
            Line(points={{-66,-12},{-66,-12},{-66,-50},{-4.44089e-016,-50},{
                  -4.44089e-016,-16}},                                                        color = {28, 108, 200}));
          connect(csfFormation1.out, storageCSF1.inf) annotation (
            Line(points={{-66,8},{-66,54},{4.44089e-16,54},{4.44089e-16,4}},        color = {0, 0, 255}));
          connect(z, storageCSF1.o) annotation (Line(points={{40,-88},{20,-88},
                  {20,0},{7,0}}, color={0,0,127}));
          connect(pressure_base.flowp, csfAbsorptionGravity.out) annotation (
              Line(points={{60,-61.4},{60,-30},{64,-30}},
                                                 color={28,108,200}));
          connect(csfAbsorptionGravity.inf, resistance1_1.out)
            annotation (Line(points={{64,-10},{64,16}}, color={28,108,200}));
          connect(resistance1_1.inf, storageCSF1.inf) annotation (Line(points={
                  {64,36},{64,54},{4.44089e-16,54},{4.44089e-16,4},{6.10623e-16,
                  4}}, color={28,108,200}));
          connect(csfFormation1.u, u) annotation (Line(points={{-72.6,-4.2},{
                  -72.6,10},{-122,10}}, color={0,0,127}));
          connect(resistance1_1.R, u1) annotation (Line(points={{71,31.6},{91.5,
                  31.6},{91.5,34},{106,34}}, color={0,0,127}));
        end Gravitymodel2;
      end Examples;

      package Experiments

        package Components_0

          model CsfFormation "Component with inflow and outflow ports and flow f from inf to outf"
            extends Interfaces0.InOutPort;

            Modelica.Blocks.Interfaces.RealInput u
              annotation (Placement(transformation(extent={{2,46},{42,86}})));
          equation
            q=u;

            annotation (
              Icon(graphics={  Ellipse(origin = {0, 10}, fillColor = {118, 246, 255},
                      fillPattern =                                                                 FillPattern.Sphere, extent = {{50, -50}, {-50, 50}}, endAngle = 360), Line(origin = {-4, 9}, points = {{64, -49}, {-64, 49}}, thickness = 1, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 6)}));
          end CsfFormation;

          model StorageCSF
            extends Interfaces0.InOutPort( p(start = 100));
            parameter Types.Elasticity E = 0.432;
            parameter Real C = 0.45;
            Modelica.Blocks.Interfaces.RealOutput o
              annotation (Placement(transformation(extent={{50,60},{70,80}})));
            Modelica.Blocks.Interfaces.RealInput c annotation (Placement(
                  transformation(extent={{16,-80},{56,-40}})));
          equation
            q = C * der(p);
            o=p;
            /*  C= 1/(E *dp);*/
            annotation (
              Icon(graphics={  Rectangle(origin = {-14, 0}, lineColor = {28, 108, 200}, fillColor = {180, 180, 0},
                      fillPattern =                                                                                              FillPattern.Vertical,
                      lineThickness =                                                                                                                                  1, extent = {{-72, 92}, {-58, -88}}), Rectangle(origin = {8, 0}, lineColor = {28, 108, 200}, fillColor = {192, 192, 0},
                      fillPattern =                                                                                                                                                                                                        FillPattern.Vertical,
                      lineThickness =                                                                                                                                                                                                        1, extent = {{66, 90}, {80, -92}}), Ellipse(origin = {3, 0}, extent = {{-47, 48}, {47, -48}}, endAngle = 360), Line(origin = {0, -6}, points = {{46, -56}, {-46, 56}})}, coordinateSystem(initialScale = 0.1)));
          end StorageCSF;

          model Pressure_base

            Interfaces0.con_flow flowp annotation (
              Placement(visible = true, transformation(origin = {0, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          equation
            flowp.p = 10;
            annotation (
              Icon(graphics={  Line(origin = {0, 14}, points = {{0, 20}, {0, -20}}, color = {0, 0, 255}, thickness = 1), Line(origin = {0, -12}, points = {{-28, 0}, {28, 0}}, color = {0, 0, 255}, thickness = 1), Line(origin = {0, -18}, points = {{-18, 0}, {20, 0}}, color = {0, 0, 255}, thickness = 1), Line(origin = {-4, -26}, points = {{-8, 0}, {12, 0}}, color = {0, 0, 255}, thickness = 1)}));
          end Pressure_base;

          model Resistance1 "Resistance with Input"
            extends Interfaces0.InOutPort;
            input Types.Resistance r "Resistance to flow";
            Modelica.Blocks.Interfaces.RealInput R
              annotation (Placement(transformation(extent={{36,50},{76,90}})));
          equation
            p = q * r;
            r=R;


            annotation (
              Icon(coordinateSystem(preserveAspectRatio = false, initialScale = 0.1), graphics={  Rectangle(origin = {0, -1}, fillColor = {0, 0, 255},
                      fillPattern =                                                                                                                                  FillPattern.HorizontalCylinder, extent = {{-60, 31}, {60, -31}}), Line(origin = {-80, 0}, points = {{-20, 0}, {20, 0}}, color = {0, 0, 255}, thickness = 1), Line(origin = {79.97, -32.14}, points = {{-19.9728, 32.1354}, {20.0272, 32.1354}}, color = {0, 0, 255}, thickness = 1)}),
              Diagram(coordinateSystem(preserveAspectRatio = false)),
              Placement(transformation(extent = {{90, -10}, {110, 10}})));
          end Resistance1;

          model CsfAbsorptionGravity "Absorption of CSF at different angles"
            extends Interfaces0.InOutPort;
            parameter Real P(start = 6.6) "CVP";
            parameter Real a( start= 0) "Angle of incline in Deg";
            SI.Density r = 1060  "Density of blood in Kg/m^3";
            Real g = 9.81 "Gravitational constant m/s^2";
            parameter Real Lcvp "Distance from cranial midpoint to Right Atrium in m";
            parameter Real Lcollapse "Distance from cranial midpoint to IJV collapse in m";
            parameter Real a1 "Angle of collapse of IJV and thus uncoupling from CVP";
            parameter Real G "Multiples of G- force";

            Modelica.Blocks.Interfaces.RealInput x
              annotation (Placement(transformation(extent={{40,54},{80,94}})));
          equation

            if a < a1 then
            p = 1.8499+3.9697*G*cos(a*0.0174533) -((0.0075)* (r*g*G*Lcvp*sin(a*0.0174533)));

             elseif a>=a1 then
             p= - (0.0075) * (r*g*Lcollapse*sin(a*0.0174533));

           end if;
            annotation (
              Icon(                                                                                                                                                                                                        coordinateSystem(initialScale = 0.1),
                  graphics={
                  Line(points={{-90,32},{-42,32},{-2,8},{42,32},{96,32}}, color={28,108,200}),
                  Line(points={{-90,-34},{-40,-34},{-2,-14},{42,-34},{100,-34},{98,-34}},
                      color={28,108,200}),
                  Line(points={{-90,32},{-90,-34},{-50,-34}}, color={28,108,200}),
                  Line(points={{96,32},{96,-34}}, color={28,108,200}),
                  Ellipse(
                    extent={{-82,24},{-16,-24}},
                    lineColor={28,108,200},
                    fillColor={0,0,255},
                    fillPattern=FillPattern.Solid),
                  Ellipse(
                    extent={{22,22},{90,-26}},
                    lineColor={28,108,200},
                    fillColor={0,0,255},
                    fillPattern=FillPattern.Solid)}));
          end CsfAbsorptionGravity;
        end Components_0;
      end Experiments;

      package Types

        type Flow = Real(final quantity = "Flow", final unit = "ml/min");

        type Pressure = Real ( final quantity = "Pressure", final unit = "mmHg");

        type Resistance = Real (final quantity = "Resistance to flow", final unit = "mmHg/(ml/min)");

        type Elasticity = Real(final quantity = "Elasticity", final unit= "1/ml");
      end Types;

      package Interfaces0

        connector Inflow "Inflow of fluid"
          Types.Pressure p "Pressure ";
          flow Types.Flow q "Flow";
          annotation (
            Icon(graphics={  Rectangle(origin = {-26, 36}, lineColor = {28, 108, 200}, fillColor = {0, 192, 0},
                    fillPattern =                                                                                             FillPattern.Solid, extent = {{-44, 36}, {96, -106}})}, coordinateSystem(initialScale = 0.1)));
        end Inflow;

        connector Outflow "outflow for the components"
          Types.Pressure p "Pressure ";
          flow Types.Flow q "Flow";
          annotation (
            Icon(coordinateSystem(preserveAspectRatio = false, initialScale = 0.1), graphics={  Ellipse(origin = {-26, 38}, lineColor = {0, 0, 255}, fillColor = {0, 0, 255},
                    fillPattern =                                                                                                                                                           FillPattern.Solid, extent = {{-52, 40}, {104, -116}}, endAngle = 360)}),
            Diagram(coordinateSystem(preserveAspectRatio = false)));
        end Outflow;

        partial model InOutPort "put together in and out"
          Types.Pressure p "pressure difference between the inflow and outflow";
          Types.Flow q "Volume flow between in and out";
          Inflow inf annotation (
            Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
          Outflow out annotation (
            Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        equation
          p = out.p - inf.p;
          0 = out.q + inf.q;
          q = out.q;
        end InOutPort;

        connector con_flow "Inflow of fluid"
          Types.Pressure p "Pressure ";
          flow Types.Flow q "Flow";
          annotation (
            Icon(graphics={  Rectangle(lineColor = {28, 108, 200}, fillColor = {0, 0, 255},
                    fillPattern =                                                                         FillPattern.Solid, extent = {{-44, 36}, {40, -46}})}, coordinateSystem(initialScale = 0.1)));
        end con_flow;
      end Interfaces0;
    end Translational;
  end Intracranial;
  annotation (
    uses(Modelica(version = "3.2.2")));
end ModelInitalComponentsVariable;
model ModelInitalComponentsVariable_Intracranial_Translational_Examples_Gravitymodel2
 extends ModelInitalComponentsVariable.Intracranial.Translational.Examples.Gravitymodel2;
  
end ModelInitalComponentsVariable_Intracranial_Translational_Examples_Gravitymodel2;
