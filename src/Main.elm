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
    { title = "telstar-freshman"
    , body =
        [ siteHeader
        , homeGif
        , title "01" "Our Vision" "団体理念"
        , detail "宇宙産業を日本の基幹産業に" "私たちTELSTARは、宇宙産業を日本の基幹産業にすることを理念に掲げています。近い未来、宇宙産業は私たちの社会に欠かせないものになると考えています。中高生の”宇宙は難しい”という意識を興味へと変えることで、来たる宇宙時代、日本が宇宙産業で世界をリードしていく未来を目指しています。"
        , title "02" "Activity Purpose" "活動目的"
        , detail "「 宇宙への興味を０→１へ 」" " 私たちTELSTARは、宇宙をフィールドに活躍する多種多様な人材を創出するため、宇宙への興味の入り口を提供する活動を行っています。"
        , detail "" "進路選択の重要な時期である中高生をメインターゲットとして、宇宙フリーマガジンTELSTARの発行を中心に、ウェブサイト・SNSによる情報発信やイベントなどの広報活動を推進しています"
        , title "03" "Content" "活動内容"
        , detail "FREE MAGAZINE" "宇宙フリーマガジン「TELSTAR」は、大学生の視点から宇宙を伝える、今までになかった宇宙雑誌です。研究機関や企業を取材した記事を美大生を中心に分かりやすいデザインでまとめ、文理を問わずに宇宙の魅力を紹介しています。完成したフリーマガジンは、全国の高校・科学館に配布され、宇宙教育の促進を目指しています。"
        , img [ class "three-section" , src "./assets/index/telstar_freemagazine.jpg" ] []
        , detail "EVENT" "フリーマガジンよりも幅広いターゲット層にアプローチできるイベント運営を行います。宇宙や教育に関する様々な外部イベントへのブース出展や、オリジナルで考えたコンセプトに沿った宇宙イベントの主催を行っています。気軽に参加でき、また私たちが参加者と直接関わることで興味を広げるサポートができるよう運営しています。"
        , img [ class "three-section" , src "./assets/index/event.jpg" ] []
        , detail "TELSTAR WEB" "TELSTARのWEBサイトでは、フリーマガジンに載せきれなかったインタビューなどの冊子スピンオフの他に、WEB特集や月や星まつわる話題を扱う記事なども掲載しています。また、TELSTARが参加もしくは主催する各種イベントの告知や報告の記事も随時更新しています。"
        , img [ class "three-section" , src "./assets/index/web.png" ] []
        , title "04" "Member" "メンバー紹介"
        , img [ class "icon" , src "./assets/index/more_icon.jpg" ] []
        , img [ class "japan-img" , src "./assets/index/japan.png" ] []
        , title "05" "Position" "担当紹介"
        -- , joinUs
        -- , 
        -- , siteFooter
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
        , img [ class "telstar-logo-on-background" , src "./assets/index/telstar_logo_white.png" ] []
        ]

joinUs : Html Msg
joinUs = 
    div [] []