import { solar } from '@solar-icons/react'

export const getIconsByCategory = (category: string) => {
    switch (category) {
        case 'Messages':
            return {
                inner: [
                    solar.Messages.ChatRoundMoney,
                    solar.Messages.ChatUnread,
                    solar.Messages.LetterUnread,
                    solar.Messages.ChatLine,
                    solar.Messages.InboxArchive,
                    solar.Messages.ChatRoundVideo,
                    solar.Messages.Pen2,
                    solar.Messages.InboxOut,
                    solar.Messages.PaperclipRounded2,
                    solar.Messages.Dialog,
                ],
                outer: [
                    solar.Messages.ChatSquareLike,
                    solar.Messages.ChatSquareArrow,
                    solar.Messages.SquareShareLine,
                    solar.Messages.CheckRead,
                    solar.Messages.ChatRound,
                    solar.Messages.ChatRoundCall,
                    solar.Messages.InboxUnread,
                    solar.Messages.MultipleForwardLeft,
                    solar.Messages.ChatRoundDots,
                    solar.Messages.ForwardRight,
                    solar.Messages.ChatDots,
                    solar.Messages.ChatRoundUnread,
                    solar.Messages.Inbox,
                ],
            }

        case 'Arrows':
            return {
                inner: [
                    solar.Arrows.SquareDoubleAltArrowDown,
                    solar.Arrows.SquareDoubleAltArrowLeft,
                    solar.Arrows.SquareDoubleAltArrowRight,
                    solar.Arrows.SquareAltArrowRight,
                    solar.Arrows.SquareAltArrowLeft,
                    solar.Arrows.SquareAltArrowDown,
                    solar.Arrows.SquareArrowLeft,
                    solar.Arrows.SquareArrowDown,
                    solar.Arrows.SquareArrowLeftUp,
                    solar.Arrows.SquareArrowLeftDown,
                ],
                outer: [
                    solar.Arrows.SquareArrowRight,
                    solar.Arrows.SquareDoubleAltArrowUp,
                    solar.Arrows.SquareArrowUp,
                    solar.Arrows.SquareTransferVertical,
                    solar.Arrows.SquareAltArrowUp,
                    solar.Arrows.SquareArrowRightUp,
                    solar.Arrows.SquareArrowRightDown,
                    solar.Arrows.RoundAltArrowRight,
                    solar.Arrows.RoundArrowLeft,
                    solar.Arrows.SquareSortVertical,
                    solar.Arrows.RoundAltArrowLeft,
                    solar.Arrows.RoundSortVertical,
                    solar.Arrows.SquareTransferHorizontal,
                ],
            }

        case 'Map':
            return {
                inner: [
                    solar.Map.MapPointWave,
                    solar.Map.MapPoint,
                    solar.Map.MapPointRemove,
                    solar.Map.MapPointFavourite,
                    solar.Map.MapPointHospital,
                    solar.Map.MapPointSchool,
                    solar.Map.MapPointSearch,
                    solar.Map.Compass,
                    solar.Map.CompassSquare,
                    solar.Map.PeopleNearby,
                ],
                outer: [
                    solar.Map.MapArrowLeft,
                    solar.Map.MapPointAdd,
                    solar.Map.MapArrowRight,
                    solar.Map.BranchingPathsDown,
                    solar.Map.BranchingPathsUp,
                    solar.Map.PointOnMap,
                    solar.Map.Map,
                    solar.Map.MapArrowSquare,
                    solar.Map.Route,
                    solar.Map.Signpost,
                    solar.Map.Global,
                    solar.Map.StreetsNavigation,
                    solar.Map.MapPointRotate,
                ],
            }

        case 'Video':
            return {
                inner: [
                    solar.Video.MusicNote4,
                    solar.Video.Clapperboard,
                    solar.Video.Rewind5SecondsBack,
                    solar.Video.RecordAudioCircle,
                    solar.Video.VideoFrame,
                    solar.Video.Record,
                    solar.Video.Library,
                    solar.Video.Gallery,
                    solar.Video.Microphone2,
                    solar.Video.VideoFrameCut,
                ],
                outer: [
                    solar.Video.VolumeLoud,
                    solar.Video.MusicNote3,
                    solar.Video.Rewind5SecondsForward,
                    solar.Video.Soundwave,
                    solar.Video.VinylRecord,
                    solar.Video.RepeatOne,
                    solar.Video.ClapperboardPlay,
                    solar.Video.Repeat,
                    solar.Video.SoundwaveSquare,
                    solar.Video.GalleryMinimalistic,
                    solar.Video.Album,
                    solar.Video.VolumeSmall,
                    solar.Video.ClapperboardOpen,
                ],
            }

        case 'Money':
            return {
                inner: [
                    solar.Money.Cardholder,
                    solar.Money.WalletMoney,
                    solar.Money.Wallet,
                    solar.Money.TickerStar,
                    solar.Money.TicketSale,
                    solar.Money.CardTransfer,
                    solar.Money.Card2,
                    solar.Money.CardRecive,
                    solar.Money.CardSend,
                    solar.Money.Wallet2,
                ],
                outer: [
                    solar.Money.CardSearch,
                    solar.Money.Sale,
                    solar.Money.Tag,
                    solar.Money.Ticket,
                    solar.Money.Card,
                    solar.Money.Euro,
                    solar.Money.TagPrice,
                    solar.Money.SaleSquare,
                    solar.Money.Ruble,
                    solar.Money.Banknote,
                    solar.Money.VerifiedCheck,
                    solar.Money.Banknote2,
                    solar.Money.WadOfMoney,
                ],
            }

        case 'Devices':
            return {
                inner: [
                    solar.Devices.Gamepad,
                    solar.Devices.GamepadCharge,
                    solar.Devices.GamepadMinimalistic,
                    solar.Devices.GamepadOld,
                    solar.Devices.SmartphoneRotateOrientation,
                    solar.Devices.SmartphoneUpdate,
                    solar.Devices.SmartphoneRotate2,
                    solar.Devices.Smartphone,
                    solar.Devices.SmartphoneVibration,
                    solar.Devices.GamepadNoCharge,
                ],
                outer: [
                    solar.Devices.HeadphonesSquare,
                    solar.Devices.SmartphoneRotateAngle,
                    solar.Devices.IPhone,
                    solar.Devices.Smartphone2,
                    solar.Devices.HeadphonesRound,
                    solar.Devices.HeadphonesRoundSound,
                    solar.Devices.Tablet,
                    solar.Devices.Server,
                    solar.Devices.Server2,
                    solar.Devices.HeadphonesSquareSound,
                    solar.Devices.ServerMinimalistic,
                    solar.Devices.ServerSquare,
                    solar.Devices.ServerPath,
                ],
            }

        case 'Weather':
            return {
                inner: [
                    solar.Weather.Clouds,
                    solar.Weather.CloudBolt,
                    solar.Weather.CloundCross,
                    solar.Weather.CloudCheck,
                    solar.Weather.Fog,
                    solar.Weather.CloudPlus,
                    solar.Weather.CloudSun2,
                    solar.Weather.CloudRain,
                    solar.Weather.CloudSun,
                    solar.Weather.CloudBoltMinimalistic,
                ],
                outer: [
                    solar.Weather.CloudStorm,
                    solar.Weather.Cloud,
                    solar.Weather.CloudMinus,
                    solar.Weather.CloudWaterdrop,
                    solar.Weather.CloudWaterdrops,
                    solar.Weather.Moon,
                    solar.Weather.MoonStars,
                    solar.Weather.CloudSnowfallMinimalistic,
                    solar.Weather.Tornado,
                    solar.Weather.CloudUpload,
                    solar.Weather.CloudSnowfall,
                    solar.Weather.Sun2,
                    solar.Weather.CloudDownload,
                ],
            }

        case 'Astronomy':
            return {
                inner: [
                    solar.Astronomy.Men,
                    solar.Astronomy.BlackHole3,
                    solar.Astronomy.BlackHole,
                    solar.Astronomy.Women,
                    solar.Astronomy.Planet2,
                    solar.Astronomy.Rocket2,
                    solar.Astronomy.Asteroid,
                    solar.Astronomy.Rocket,
                    solar.Astronomy.Atom,
                    solar.Astronomy.Earth,
                ],
                outer: [
                    solar.Astronomy.Infinity,
                    solar.Astronomy.Planet4,
                    solar.Astronomy.StarCircle,
                    solar.Astronomy.Satellite,
                    solar.Astronomy.BlackHole2,
                    solar.Astronomy.StarFall,
                    solar.Astronomy.StarRainbow,
                    solar.Astronomy.Planet3,
                    solar.Astronomy.Star2,
                    solar.Astronomy.StarsLine,
                    solar.Astronomy.Planet,
                    solar.Astronomy.Stars2,
                    solar.Astronomy.StarRing,
                ],
            }

        case 'Sports':
            return {
                inner: [
                    solar.Sports.SkateboardingRound,
                    solar.Sports.Skateboarding,
                    solar.Sports.Running2,
                    solar.Sports.BicyclingRound,
                    solar.Sports.Skateboard,
                    solar.Sports.RunningRound,
                    solar.Sports.WalkingRound,
                    solar.Sports.HikingMinimalistic,
                    solar.Sports.Running,
                    solar.Sports.MeditationRound,
                ],
                outer: [
                    solar.Sports.Bicycling,
                    solar.Sports.HikingRound,
                    solar.Sports.Stretching,
                    solar.Sports.Meditation,
                    solar.Sports.Treadmill,
                    solar.Sports.TreadmillRound,
                    solar.Sports.StretchingRound,
                    solar.Sports.Walking,
                    solar.Sports.WaterSun,
                    solar.Sports.Water,
                    solar.Sports.Hiking,
                    solar.Sports.Dumbbell,
                    solar.Sports.Swimming,
                ],
            }

        case 'Time':
            return {
                inner: [
                    solar.Time.ClockCircle,
                    solar.Time.History,
                    solar.Time.ClockSquare,
                    solar.Time.AlarmPlay,
                    solar.Time.Alarm,
                    solar.Time.AlarmSleep,
                    solar.Time.AlarmAdd,
                    solar.Time.AlarmTurnOff,
                    solar.Time.StopwatchPlay,
                    solar.Time.Hourglass,
                ],
                outer: [
                    solar.Time.StopwatchPause,
                    solar.Time.History3,
                    solar.Time.CalendarMinimalistic,
                    solar.Time.History2,
                    solar.Time.Calendar,
                    solar.Time.AlarmPause,
                    solar.Time.Stopwatch,
                    solar.Time.CalendarMark,
                    solar.Time.CalendarDate,
                    solar.Time.CalendarAdd,
                    solar.Time.AlarmRemove,
                    solar.Time.WatchSquare,
                    solar.Time.CalendarSearch,
                ],
            }

        case 'List':
            return {
                inner: [
                    solar.List.PlaaylistMinimalistic,
                    solar.List.Playlist2,
                    solar.List.PlaylistMinimalistic2,
                    solar.List.PlaylistMinimalistic3,
                    solar.List.ListHeart,
                    solar.List.ListHeartMinimalistic,
                    solar.List.ListDownMinimalistic,
                    solar.List.ListCheck,
                    solar.List.ListCheckMinimalistic,
                    solar.List.ListCross,
                ],
                outer: [
                    solar.List.ListCrossMinimalistic,
                    solar.List.SortByAlphabet,
                    solar.List.List,
                    solar.List.SortFromTopToBottom,
                    solar.List.ListArrowUp,
                    solar.List.ListDown,
                    solar.List.SortFromBottomToTop,
                    solar.List.ListUpMinimalistic,
                    solar.List.ListArrowDown,
                    solar.List.ListArrowDownMinimalistic,
                    solar.List.Checklist,
                    solar.List.Bill2,
                    solar.List.Playlist,
                ],
            }

        case 'Ui':
            return {
                inner: [
                    solar.Ui.CheckCircle,
                    solar.Ui.CloseCircle,
                    solar.Ui.InfoCircle,
                    solar.Ui.AddCircle,
                    solar.Ui.QuestionCircle,
                    solar.Ui.DangerCircle,
                    solar.Ui.DangerTriangle,
                    solar.Ui.Danger,
                    solar.Ui.Forbidden,
                    solar.Ui.ForbiddenCircle,
                ],
                outer: [
                    solar.Ui.CloseSquare,
                    solar.Ui.AddSquare,
                    solar.Ui.QuestionSquare,
                    solar.Ui.DangerSquare,
                    solar.Ui.CheckSquare,
                    solar.Ui.MenuDotsCircle,
                    solar.Ui.MenuDotsSquare,
                    solar.Ui.Revote,
                    solar.Ui.MenuDots,
                    solar.Ui.HomeAdd,
                    solar.Ui.SmartHome,
                    solar.Ui.InfoSquare,
                    solar.Ui.MinusCircle,
                ],
            }

        case 'Medicine':
            return {
                inner: [
                    solar.Medicine.JarOfPills,
                    solar.Medicine.Bacteria,
                    solar.Medicine.Dna,
                    solar.Medicine.Syringe,
                    solar.Medicine.JarOfPills2,
                    solar.Medicine.BenzeneRing,
                    solar.Medicine.Pills3,
                    solar.Medicine.Dropper2,
                    solar.Medicine.Thermometer,
                    solar.Medicine.Pills2,
                ],
                outer: [
                    solar.Medicine.Dropper3,
                    solar.Medicine.DropperMinimalistic2,
                    solar.Medicine.Bone,
                    solar.Medicine.AdhesivePlaster2,
                    solar.Medicine.Pill,
                    solar.Medicine.Dropper,
                    solar.Medicine.TestTube,
                    solar.Medicine.Pills,
                    solar.Medicine.Bones,
                    solar.Medicine.TestTubeMinimalistic,
                    solar.Medicine.BoneBroken,
                    solar.Medicine.HeartPulse,
                    solar.Medicine.DropperMinimalistic,
                ],
            }

        case 'Home':
            return {
                inner: [
                    solar.Home.Condicioner,
                    solar.Home.Condicioner2,
                    solar.Home.RemoteController,
                    solar.Home.Speaker,
                    solar.Home.RemoteControllerMinimalistic,
                    solar.Home.SpeakerMinimalistic,
                    solar.Home.WashingMachine,
                    solar.Home.Sofa3,
                    solar.Home.RemoteController2,
                    solar.Home.Closet,
                ],
                outer: [
                    solar.Home.Sofa,
                    solar.Home.Mirror,
                    solar.Home.WashingMachineMinimalistic,
                    solar.Home.Closet2,
                    solar.Home.Bed,
                    solar.Home.Sofa2,
                    solar.Home.Lamp,
                    solar.Home.Bath,
                    solar.Home.BedsideTable4,
                    solar.Home.Chandelier,
                    solar.Home.Trellis,
                    solar.Home.BedsideTable,
                    solar.Home.Armchair,
                ],
            }

        case 'It':
            return {
                inner: [
                    solar.It.WiFiRouterMinimalistic,
                    solar.It.SidebarMinimalistic,
                    solar.It.Siderbar,
                    solar.It.WiFiRouterRound,
                    solar.It.SidebarCode,
                    solar.It.WiFiRouter,
                    solar.It.WindowFrame,
                    solar.It.UsbCircle,
                    solar.It.UsbSquare,
                    solar.It.Code,
                ],
                outer: [
                    solar.It.Screencast,
                    solar.It.Translation2,
                    solar.It.Programming,
                    solar.It.CodeCircle,
                    solar.It.Code2,
                    solar.It.Translation,
                    solar.It.Usb,
                    solar.It.Structure,
                    solar.It.SlashSquare,
                    solar.It.CodeSquare,
                    solar.It.Screencast2,
                    solar.It.Station,
                    solar.It.SlashCircle,
                ],
            }

        case 'TextFormatting':
            return {
                inner: [
                    solar.TextFormatting.EraserCircle,
                    solar.TextFormatting.Eraser,
                    solar.TextFormatting.TextItalic,
                    solar.TextFormatting.EraserSquare,
                    solar.TextFormatting.TextItalicSquare,
                    solar.TextFormatting.TextCircle,
                    solar.TextFormatting.TextCrossCircle,
                    solar.TextFormatting.TextBoldCircle,
                    solar.TextFormatting.TextCross,
                    solar.TextFormatting.TextUnderlineCircle,
                ],
                outer: [
                    solar.TextFormatting.TextItalicCircle,
                    solar.TextFormatting.TextCrossSquare,
                    solar.TextFormatting.Text,
                    solar.TextFormatting.TextUnderline,
                    solar.TextFormatting.TextUnderlineCross,
                    solar.TextFormatting.TextSquare,
                    solar.TextFormatting.TextBold,
                    solar.TextFormatting.TextSelection,
                    solar.TextFormatting.Link,
                    solar.TextFormatting.LinkBrokenMinimalistic,
                    solar.TextFormatting.LinkRound,
                    solar.TextFormatting.LinkSquare,
                    solar.TextFormatting.TextSquare2,
                ],
            }

        case 'Shopping':
            return {
                inner: [
                    solar.Shopping.CartLarge2,
                    solar.Shopping.CartLargeMinimalistic,
                    solar.Shopping.CartLarge,
                    solar.Shopping.CartCheck,
                    solar.Shopping.CartLarge4,
                    solar.Shopping.CartCross,
                    solar.Shopping.CartPlus,
                    solar.Shopping.Cart,
                    solar.Shopping.CartLarge3,
                    solar.Shopping.Cart3,
                ],
                outer: [
                    solar.Shopping.Bag,
                    solar.Shopping.Cart2,
                    solar.Shopping.Cart5,
                    solar.Shopping.BagCross,
                    solar.Shopping.Bag2,
                    solar.Shopping.BagMusic2,
                    solar.Shopping.BagMusic,
                    solar.Shopping.Bag5,
                    solar.Shopping.BagCheck,
                    solar.Shopping.Shop,
                    solar.Shopping.Bag3,
                    solar.Shopping.Cart4,
                    solar.Shopping.ShopMinimalistic,
                ],
            }

        case 'School':
            return {
                inner: [
                    solar.School.CaseMinimalistic,
                    solar.School.Case,
                    solar.School.Diploma,
                    solar.School.CaseRound,
                    solar.School.SquareAcademicCap,
                    solar.School.NotebookSquare,
                    solar.School.CaseRoundMinimalistic,
                    solar.School.NotebookBookmark,
                    solar.School.Notebook2,
                    solar.School.SquareAcademicCap2,
                ],
                outer: [
                    solar.School.Book,
                    solar.School.NotebookMinimalistic,
                    solar.School.DiplomaVerified,
                    solar.School.Calculator,
                    solar.School.Backpack,
                    solar.School.BookmarkSquareMinimalistic,
                    solar.School.BookmarkCircle,
                    solar.School.CalculatorMinimalistic,
                    solar.School.BookBookmark,
                    solar.School.PlusMinus,
                    solar.School.BookBookmarkMinimalistic,
                    solar.School.Book2,
                    solar.School.PassportMinimalistic,
                ],
            }

        case 'Tools':
            return {
                inner: [
                    solar.Tools.RulerPen,
                    solar.Tools.Filters,
                    solar.Tools.Pipette,
                    solar.Tools.FlipHorizontal,
                    solar.Tools.ThreeSquares,
                    solar.Tools.FlipVertical,
                    solar.Tools.MirrorRight,
                    solar.Tools.CropMinimalistic,
                    solar.Tools.LayersMinimalistic,
                    solar.Tools.Ruler,
                ],
                outer: [
                    solar.Tools.Crop,
                    solar.Tools.RulerAngular,
                    solar.Tools.ColourTuneing,
                    solar.Tools.PaletteRound,
                    solar.Tools.MirrorLeft,
                    solar.Tools.Layers,
                    solar.Tools.Palette,
                    solar.Tools.Pallete2,
                    solar.Tools.PaintRoller,
                    solar.Tools.AlignTop,
                    solar.Tools.AlignVerticalSpacing,
                    solar.Tools.AlignHorizontalCenter,
                    solar.Tools.RulerCrossPen,
                ],
            }

        case 'ArrowsAction':
            return {
                inner: [
                    solar.ArrowsAction.SendTwiceSquare,
                    solar.ArrowsAction.ReciveTwiceSquare,
                    solar.ArrowsAction.UploadTwiceSquare,
                    solar.ArrowsAction.ReciveSquare,
                    solar.ArrowsAction.UndoLeftRound,
                    solar.ArrowsAction.SendSquare,
                    solar.ArrowsAction.UploadSquare,
                    solar.ArrowsAction.UndoLeft,
                    solar.ArrowsAction.DownloadTwiceSquare,
                    solar.ArrowsAction.UndoLeftSquare,
                ],
                outer: [
                    solar.ArrowsAction.UndoRightRoundSquare,
                    solar.ArrowsAction.UndoLeftRoundSquare,
                    solar.ArrowsAction.UndoRight,
                    solar.ArrowsAction.Scale,
                    solar.ArrowsAction.DownloadSquare,
                    solar.ArrowsAction.UndoRightSquare,
                    solar.ArrowsAction.UndoRightRound,
                    solar.ArrowsAction.SquareTopUp,
                    solar.ArrowsAction.SquareTopDown,
                    solar.ArrowsAction.Maximize,
                    solar.ArrowsAction.SquareBottomDown,
                    solar.ArrowsAction.Minimize,
                    solar.ArrowsAction.CircleBottomUp,
                ],
            }

        case 'Notes':
            return {
                inner: [
                    solar.Notes.ClipboardHeart,
                    solar.Notes.DocumentText,
                    solar.Notes.Document,
                    solar.Notes.DocumentAdd,
                    solar.Notes.DocumentsMinimalistic,
                    solar.Notes.Clipboard,
                    solar.Notes.Notes,
                    solar.Notes.Documents,
                    solar.Notes.ClipboardRemove,
                    solar.Notes.DocumentMedicine,
                ],
                outer: [
                    solar.Notes.NotesMinimalistic,
                    solar.Notes.ClipboardText,
                    solar.Notes.ClipboardCheck,
                    solar.Notes.ArchiveDownMinimlistic,
                    solar.Notes.ClipboardList,
                    solar.Notes.ArchiveUpMinimlistic,
                    solar.Notes.Archive,
                    solar.Notes.ArchiveCheck,
                    solar.Notes.ArchiveUp,
                    solar.Notes.ArchiveDown,
                    solar.Notes.Notebook,
                    solar.Notes.ArchiveMinimalistic,
                    solar.Notes.ClipboardAdd,
                ],
            }

        case 'Security':
            return {
                inner: [
                    solar.Security.BombMinimalistic,
                    solar.Security.Lock,
                    solar.Security.BombEmoji,
                    solar.Security.LockPassword,
                    solar.Security.LockUnlocked,
                    solar.Security.LockPasswordUnlocked,
                    solar.Security.LockKeyholeMinimalistic,
                    solar.Security.LockKeyhole,
                    solar.Security.Bomb,
                    solar.Security.Eye,
                ],
                outer: [
                    solar.Security.LockKeyholeUnlocked,
                    solar.Security.Key,
                    solar.Security.EyeClosed,
                    solar.Security.Password,
                    solar.Security.PasswordMinimalistic,
                    solar.Security.SirenRounded,
                    solar.Security.KeySquare2,
                    solar.Security.PasswordMinimalisticInput,
                    solar.Security.KeyMinimalistic,
                    solar.Security.KeyMinimalisticSquare2,
                    solar.Security.LockKeyholeMinimalisticUnlocked,
                    solar.Security.KeyMinimalisticSquare,
                    solar.Security.KeySquare,
                ],
            }

        default:
            return {
                inner: [],
                outer: [],
            }
    }
}
export const categories = [
    'Messages',
    'Arrows',
    'Map',
    'Video',
    'Money',
    'Devices',
    'Weather',
    'Astronomy',
    'Sports',
    'Time',
    'List',
    'Ui',
    'Medicine',
    'Home',
    'It',
    'TextFormatting',
    'Shopping',
    'School',
    'Tools',
    'ArrowsAction',
    'Notes',
    'Security',
] as const
export type Category = (typeof categories)[number]
