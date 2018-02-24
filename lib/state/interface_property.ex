defmodule CodeParserState.InterfaceProperty do
  alias CodeParserState.Property, as: Property
  alias CodeParserState, as: State
  alias CodeParserState.Interface, as: Interface

  @type state :: CodeParserState.state
  @type property :: Property.property

  @spec set_accessibility(state, String.t) :: state
  def set_accessibility(%State{} = state, accessibility),
    do: Interface.update_property state, &Property.set_accessibility(&1, accessibility)

  @spec set_type(state, String.t) :: state
  def set_type(%State{} = state, type), do: Interface.update_property state, &Property.set_type(&1, type)

  @spec set_name(state, String.t) :: state
  def set_name(%State{} = state, name), do: Interface.update_property state, &Property.set_name(&1, name)

  @spec set_description(state, String.t) :: state
  def set_description(%State{} = state, description),
    do: Interface.update_property state, &Property.set_description(&1, description)
end
