@misc
Feature: Misc

Scenario: Set override colour
    Given an empty Blender session
    And I add a cube
    And the object "Cube" is selected
    When I press "bim.set_override_colour"
    Then nothing happens

Scenario: Set viewport shadow from sun
    Given an empty Blender session
    And I add a sun
    And the object "Sun" is selected
    When I press "bim.set_viewport_shadow_from_sun"
    Then nothing happens

Scenario: Snap spaces together
    Given an empty Blender session
    And I add a cube
    And I add a cube
    And the object "Cube" is selected
    And additionally the object "Cube.001" is selected
    When I press "bim.snap_spaces_together"
    Then nothing happens

Scenario: Resize to storey
    Given an empty IFC project
    And I add a cube
    And the object "Cube" is selected
    And I set "scene.BIMRootProperties.ifc_class" to "IfcWall"
    And I press "bim.assign_class"
    And the object "IfcWall/Cube" is selected
    And the variable "storey" is "tool.Ifc.get().by_type('IfcBuildingStorey')[0].id()"
    And I press "bim.assign_container(structure={storey})"
    When I press "bim.resize_to_storey"
    Then nothing happens
