module Model (..) where

import Shared.Test exposing (TestConfig)
import Http.Request exposing (Request)
import Http.Response exposing (Response)
import Database.Nedb exposing (Client)
import Dict exposing (Dict)
import Github exposing (..)


type alias GithubInfo =
    { auth : GithubAuth
    , org : String
    , repo : String
    , assignee : String
    }

type alias Model =
    { key : String
    , secret : String
    , bucket : String
    , baseUrl : String
    , database : Client
    , testConfig : TestConfig
    , authSecret : String
    , contact : String
    , sessions : Dict String Session
    , github : GithubInfo
    }

type alias Session =
    { token : String }


type alias Connection =
    ( Request, Response )


type alias SiteConfig =
    { myPort : Int
    , databaseConfig : String
    , testConfig : String
    , accessKey : String
    , secret : String
    , bucket : String
    , baseUrl : String
    , authSecret : String
    , contact : String
    }
