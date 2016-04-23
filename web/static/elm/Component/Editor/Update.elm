module Component.Editor.Update (..) where

import Effects exposing (Effects)
import Component.Editor.Model exposing (..)


type Action
  = NoOp
  | ModifyText String


type alias Addresses a =
  { a
  | editor : Signal.Address Action
  }


update : Addresses a -> Action -> Model b -> ( Model b, Effects.Effects Action )
update addresses action model =
  case action of
    NoOp ->
      ( model, Effects.none )

    ModifyText str ->
      ( { model | inputText = str }, Effects.none )
