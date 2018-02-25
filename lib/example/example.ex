defmodule CodeParserState.Example do
  @moduledoc """
  Generates a test state that can be used to test code generators using this application.
  """

  @spec generate() :: CodeParserState.state
  def generate do
    %CodeParserState{}
    |> CodeParserState.add_file(%CodeParserState.File{})
    |> CodeParserState.File.set_name("test.uml")
    |> CodeParserState.File.add_namespace(%CodeParserState.Namespace{})
    |> CodeParserState.Namespace.set_name("Dummy.Namespace")
    |> CodeParserState.Namespace.add_class(%CodeParserState.Class{})
    |> CodeParserState.Class.set_name("DummyClass")
    |> CodeParserState.Class.add_property(%CodeParserState.Property{}
      |> CodeParserState.Property.set_accessibility("public")
      |> CodeParserState.Property.set_type("int")
      |> CodeParserState.Property.set_name("Count")
      |> CodeParserState.Property.set_description("the number of occurences of something")
    )
    |> CodeParserState.Class.add_property(%CodeParserState.Property{}
      |> CodeParserState.Property.set_accessibility("private const")
      |> CodeParserState.Property.set_type("string")
      |> CodeParserState.Property.set_name("NAME")
      |> CodeParserState.Property.set_description("some kind of fixed name")
    )
    |> CodeParserState.Class.add_method(%CodeParserState.Method{})
    |> CodeParserState.ClassMethod.set_accessibility("public")
    |> CodeParserState.ClassMethod.set_type("void")
    |> CodeParserState.ClassMethod.set_name("DoNothing")
    |> CodeParserState.ClassMethod.set_description("does nothing at all")
    |> CodeParserState.ClassMethod.add_parameter(%CodeParserState.Property{})
    |> CodeParserState.ClassMethodParameter.set_accessibility("public")
    |> CodeParserState.ClassMethodParameter.set_type("float")
    |> CodeParserState.ClassMethodParameter.set_name("ignoredValue")
    |> CodeParserState.ClassMethod.add_parameter(%CodeParserState.Property{})
    |> CodeParserState.ClassMethodParameter.set_accessibility("public")
    |> CodeParserState.ClassMethodParameter.set_type("string")
    |> CodeParserState.ClassMethodParameter.set_name("option")
    |> CodeParserState.File.add_namespace(%CodeParserState.Namespace{})
    |> CodeParserState.Namespace.set_name("Dummy.Namespace.Extreme")
    |> CodeParserState.Namespace.add_enum(%CodeParserState.Enum{})
    |> CodeParserState.Enum.set_name("ButtonType")
    |> CodeParserState.Enum.add_property(%CodeParserState.Property{})
    |> CodeParserState.EnumProperty.set_name("OkButton")
    |> CodeParserState.Enum.add_property(%CodeParserState.Property{})
    |> CodeParserState.EnumProperty.set_name("CancelButton")
    |> CodeParserState.Namespace.add_interface(%CodeParserState.Interface{})
    |> CodeParserState.Interface.add_method(%CodeParserState.Method{})
    |> CodeParserState.InterfaceMethod.set_type("int")
    |> CodeParserState.InterfaceMethod.set_name("GetValue")
    |> CodeParserState.InterfaceMethod.set_description("gets a value")
    |> CodeParserState.Namespace.add_class(%CodeParserState.Class{})
    |> CodeParserState.Class.set_name("DummyClass")
    |> CodeParserState.Class.add_property(%CodeParserState.Property{}
      |> CodeParserState.Property.set_accessibility("private const")
      |> CodeParserState.Property.set_type("string")
      |> CodeParserState.Property.set_name("NAME")
      |> CodeParserState.Property.set_description("some kind of fixed name")
    )
    |> CodeParserState.Class.add_method(%CodeParserState.Method{})
    |> CodeParserState.ClassMethod.set_accessibility("public")
    |> CodeParserState.ClassMethod.set_type("int")
    |> CodeParserState.ClassMethod.set_name("GetValue")
    |> CodeParserState.ClassMethod.set_description("gets a value")
  end

end