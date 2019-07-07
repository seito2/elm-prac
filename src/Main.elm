module Main exposing (main)

import Browser
import Html exposing (Html, a, footer, h1, h2, header, img, li, node, p, section, text, ul, div, br)
import Html.Attributes exposing (class, href, src, target)


main =
    Browser.document
        { init = init
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }



-- MODEL


type alias Model =
    { userState : String
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( Model ""
    , Cmd.none
    )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Browser.Document Msg
view model =
    { title = "Elm 0.19 starter"
    , body =
        [ siteHeader
        , homeGif
        , title "01" "Our Vision" "団体理念"
        , detail "宇宙産業を日本の基幹産業に" "私たちTELSTARは、宇宙産業を日本の基幹産業にすることを理念に掲げています。近い未来、宇宙産業は私たちの社会に欠かせないものになると考えています。中高生の”宇宙は難しい”という意識を興味へと変えることで、来たる宇宙時代、日本が宇宙産業で世界をリードしていく未来を目指しています。"
        , siteFooter
        ]
    }

-- view template

title : String -> String -> String -> (Html Msg)
title val title_en title_jp = 
    div [ class "number-box" ]
        [ p [ class "number" ] [ text val ]
        , p [ class "title" ] 
            [ text title_en 
            , br [] []
            , text title_jp
            ]
        ]

detail : String -> String -> ( Html Msg )
detail concept comment = 
    div [ class "main-content" ]
        [ h2 [] [ text concept ]
        , p [] [ text comment ]
        ]

-- view body

siteHeader : Html Msg
siteHeader =
    header [ class "site-header" ]
        [ img [ src "./assets/index/telstar_logo_black.png", class "logo" ] []
        , div [] []
        , img [ src "./assets/index/ic_menu_48px.svg" , class "hanbarger"] []
        ]

homeGif : Html Msg
homeGif = 
    div []
        [ div [ class "home-gif-container"]
            [ img [ class "top-background" , src "./assets/index/home.gif" ] [] ]
        , img [ class "telstar-logo-on-background" , src "./assets/telstar_logo_white.png" ] []
        ]

siteFooter : Html Msg
siteFooter =
    footer [ class "site-footer" ]
        [ p [ class "copyright" ] [ text "© 2019 y047aka" ]
        ]

