module Cldr.Greek exposing (countryCodeToName)

{-| 
@docs countryCodeToName
-}


import Cldr


countryCodeToName : Cldr.CountryCode -> String
countryCodeToName countryCode =
    case countryCode of
        Cldr.AD ->
            "Ανδόρα"

        Cldr.AE ->
            "Ηνωμένα Αραβικά Εμιράτα"

        Cldr.AF ->
            "Αφγανιστάν"

        Cldr.AG ->
            "Αντίγκουα και Μπαρμπούντα"

        Cldr.AI ->
            "Ανγκουίλα"

        Cldr.AL ->
            "Αλβανία"

        Cldr.AM ->
            "Αρμενία"

        Cldr.AO ->
            "Αγκόλα"

        Cldr.AQ ->
            "Ανταρκτική"

        Cldr.AR ->
            "Αργεντινή"

        Cldr.AS ->
            "Αμερικανική Σαμόα"

        Cldr.AT ->
            "Αυστρία"

        Cldr.AU ->
            "Αυστραλία"

        Cldr.AW ->
            "Αρούμπα"

        Cldr.AX ->
            "Νήσοι Όλαντ"

        Cldr.AZ ->
            "Αζερμπαϊτζάν"

        Cldr.BA ->
            "Βοσνία - Ερζεγοβίνη"

        Cldr.BB ->
            "Μπαρμπέιντος"

        Cldr.BD ->
            "Μπανγκλαντές"

        Cldr.BE ->
            "Βέλγιο"

        Cldr.BF ->
            "Μπουρκίνα Φάσο"

        Cldr.BG ->
            "Βουλγαρία"

        Cldr.BH ->
            "Μπαχρέιν"

        Cldr.BI ->
            "Μπουρούντι"

        Cldr.BJ ->
            "Μπενίν"

        Cldr.BL ->
            "Άγιος Βαρθολομαίος"

        Cldr.BM ->
            "Βερμούδες"

        Cldr.BN ->
            "Μπρουνέι"

        Cldr.BO ->
            "Βολιβία"

        Cldr.BQ ->
            "Ολλανδία Καραϊβικής"

        Cldr.BR ->
            "Βραζιλία"

        Cldr.BS ->
            "Μπαχάμες"

        Cldr.BT ->
            "Μπουτάν"

        Cldr.BV ->
            "Νήσος Μπουβέ"

        Cldr.BW ->
            "Μποτσουάνα"

        Cldr.BY ->
            "Λευκορωσία"

        Cldr.BZ ->
            "Μπελίζ"

        Cldr.CA ->
            "Καναδάς"

        Cldr.CC ->
            "Νήσοι Κόκος (Κίλινγκ)"

        Cldr.CD ->
            "Κονγκό - Κινσάσα"

        Cldr.CF ->
            "Κεντροαφρικανική Δημοκρατία"

        Cldr.CG ->
            "Κονγκό - Μπραζαβίλ"

        Cldr.CH ->
            "Ελβετία"

        Cldr.CI ->
            "Ακτή Ελεφαντοστού"

        Cldr.CK ->
            "Νήσοι Κουκ"

        Cldr.CL ->
            "Χιλή"

        Cldr.CM ->
            "Καμερούν"

        Cldr.CN ->
            "Κίνα"

        Cldr.CO ->
            "Κολομβία"

        Cldr.CR ->
            "Κόστα Ρίκα"

        Cldr.CU ->
            "Κούβα"

        Cldr.CV ->
            "Πράσινο Ακρωτήριο"

        Cldr.CW ->
            "Κουρασάο"

        Cldr.CX ->
            "Νήσος των Χριστουγέννων"

        Cldr.CY ->
            "Κύπρος"

        Cldr.CZ ->
            "Τσεχία"

        Cldr.DE ->
            "Γερμανία"

        Cldr.DJ ->
            "Τζιμπουτί"

        Cldr.DK ->
            "Δανία"

        Cldr.DM ->
            "Ντομίνικα"

        Cldr.DO ->
            "Δομινικανή Δημοκρατία"

        Cldr.DZ ->
            "Αλγερία"

        Cldr.EC ->
            "Ισημερινός"

        Cldr.EE ->
            "Εσθονία"

        Cldr.EG ->
            "Αίγυπτος"

        Cldr.EH ->
            "Δυτική Σαχάρα"

        Cldr.ER ->
            "Ερυθραία"

        Cldr.ES ->
            "Ισπανία"

        Cldr.ET ->
            "Αιθιοπία"

        Cldr.FI ->
            "Φινλανδία"

        Cldr.FJ ->
            "Φίτζι"

        Cldr.FK ->
            "Νήσοι Φόκλαντ"

        Cldr.FM ->
            "Μικρονησία"

        Cldr.FO ->
            "Νήσοι Φερόες"

        Cldr.FR ->
            "Γαλλία"

        Cldr.GA ->
            "Γκαμπόν"

        Cldr.GB ->
            "Ηνωμένο Βασίλειο"

        Cldr.GD ->
            "Γρενάδα"

        Cldr.GE ->
            "Γεωργία"

        Cldr.GF ->
            "Γαλλική Γουιάνα"

        Cldr.GG ->
            "Γκέρνζι"

        Cldr.GH ->
            "Γκάνα"

        Cldr.GI ->
            "Γιβραλτάρ"

        Cldr.GL ->
            "Γροιλανδία"

        Cldr.GM ->
            "Γκάμπια"

        Cldr.GN ->
            "Γουινέα"

        Cldr.GP ->
            "Γουαδελούπη"

        Cldr.GQ ->
            "Ισημερινή Γουινέα"

        Cldr.GR ->
            "Ελλάδα"

        Cldr.GS ->
            "Νήσοι Νότια Γεωργία και Νότιες Σάντουιτς"

        Cldr.GT_ ->
            "Γουατεμάλα"

        Cldr.GU ->
            "Γκουάμ"

        Cldr.GW ->
            "Γουινέα Μπισάου"

        Cldr.GY ->
            "Γουιάνα"

        Cldr.HK ->
            "Χονγκ Κονγκ ΕΔΠ Κίνας"

        Cldr.HM ->
            "Νήσοι Χερντ και Μακντόναλντ"

        Cldr.HN ->
            "Ονδούρα"

        Cldr.HR ->
            "Κροατία"

        Cldr.HT ->
            "Αϊτή"

        Cldr.HU ->
            "Ουγγαρία"

        Cldr.ID ->
            "Ινδονησία"

        Cldr.IE ->
            "Ιρλανδία"

        Cldr.IL ->
            "Ισραήλ"

        Cldr.IM ->
            "Νήσος του Μαν"

        Cldr.IN ->
            "Ινδία"

        Cldr.IO ->
            "Βρετανικά Εδάφη Ινδικού Ωκεανού"

        Cldr.IQ ->
            "Ιράκ"

        Cldr.IR ->
            "Ιράν"

        Cldr.IS ->
            "Ισλανδία"

        Cldr.IT ->
            "Ιταλία"

        Cldr.JE ->
            "Τζέρζι"

        Cldr.JM ->
            "Τζαμάικα"

        Cldr.JO ->
            "Ιορδανία"

        Cldr.JP ->
            "Ιαπωνία"

        Cldr.KE ->
            "Κένυα"

        Cldr.KG ->
            "Κιργιστάν"

        Cldr.KH ->
            "Καμπότζη"

        Cldr.KI ->
            "Κιριμπάτι"

        Cldr.KM ->
            "Κομόρες"

        Cldr.KN ->
            "Σεν Κιτς και Νέβις"

        Cldr.KP ->
            "Βόρεια Κορέα"

        Cldr.KR ->
            "Νότια Κορέα"

        Cldr.KW ->
            "Κουβέιτ"

        Cldr.KY ->
            "Νήσοι Κέιμαν"

        Cldr.KZ ->
            "Καζακστάν"

        Cldr.LA ->
            "Λάος"

        Cldr.LB ->
            "Λίβανος"

        Cldr.LC ->
            "Αγία Λουκία"

        Cldr.LI ->
            "Λιχτενστάιν"

        Cldr.LK ->
            "Σρι Λάνκα"

        Cldr.LR ->
            "Λιβερία"

        Cldr.LS ->
            "Λεσότο"

        Cldr.LT_ ->
            "Λιθουανία"

        Cldr.LU ->
            "Λουξεμβούργο"

        Cldr.LV ->
            "Λετονία"

        Cldr.LY ->
            "Λιβύη"

        Cldr.MA ->
            "Μαρόκο"

        Cldr.MC ->
            "Μονακό"

        Cldr.MD ->
            "Μολδαβία"

        Cldr.ME ->
            "Μαυροβούνιο"

        Cldr.MF ->
            "Άγιος Μαρτίνος (Γαλλικό τμήμα)"

        Cldr.MG ->
            "Μαδαγασκάρη"

        Cldr.MH ->
            "Νήσοι Μάρσαλ"

        Cldr.MK ->
            "Βόρεια Μακεδονία"

        Cldr.ML ->
            "Μάλι"

        Cldr.MM ->
            "Μιανμάρ (Βιρμανία)"

        Cldr.MN ->
            "Μογγολία"

        Cldr.MO ->
            "Μακάο ΕΔΠ Κίνας"

        Cldr.MP ->
            "Νήσοι Βόρειες Μαριάνες"

        Cldr.MQ ->
            "Μαρτινίκα"

        Cldr.MR ->
            "Μαυριτανία"

        Cldr.MS ->
            "Μονσεράτ"

        Cldr.MT ->
            "Μάλτα"

        Cldr.MU ->
            "Μαυρίκιος"

        Cldr.MV ->
            "Μαλδίβες"

        Cldr.MW ->
            "Μαλάουι"

        Cldr.MX ->
            "Μεξικό"

        Cldr.MY ->
            "Μαλαισία"

        Cldr.MZ ->
            "Μοζαμβίκη"

        Cldr.NA ->
            "Ναμίμπια"

        Cldr.NC ->
            "Νέα Καληδονία"

        Cldr.NE ->
            "Νίγηρας"

        Cldr.NF ->
            "Νήσος Νόρφολκ"

        Cldr.NG ->
            "Νιγηρία"

        Cldr.NI ->
            "Νικαράγουα"

        Cldr.NL ->
            "Κάτω Χώρες"

        Cldr.NO ->
            "Νορβηγία"

        Cldr.NP ->
            "Νεπάλ"

        Cldr.NR ->
            "Ναουρού"

        Cldr.NU ->
            "Νιούε"

        Cldr.NZ ->
            "Νέα Ζηλανδία"

        Cldr.OM ->
            "Ομάν"

        Cldr.PA ->
            "Παναμάς"

        Cldr.PE ->
            "Περού"

        Cldr.PF ->
            "Γαλλική Πολυνησία"

        Cldr.PG ->
            "Παπούα Νέα Γουινέα"

        Cldr.PH ->
            "Φιλιππίνες"

        Cldr.PK ->
            "Πακιστάν"

        Cldr.PL ->
            "Πολωνία"

        Cldr.PM ->
            "Σεν Πιερ και Μικελόν"

        Cldr.PN ->
            "Νήσοι Πίτκερν"

        Cldr.PR ->
            "Πουέρτο Ρίκο"

        Cldr.PS ->
            "Παλαιστινιακά Εδάφη"

        Cldr.PT ->
            "Πορτογαλία"

        Cldr.PW ->
            "Παλάου"

        Cldr.PY ->
            "Παραγουάη"

        Cldr.QA ->
            "Κατάρ"

        Cldr.RE ->
            "Ρεϊνιόν"

        Cldr.RO ->
            "Ρουμανία"

        Cldr.RS ->
            "Σερβία"

        Cldr.RU ->
            "Ρωσία"

        Cldr.RW ->
            "Ρουάντα"

        Cldr.SA ->
            "Σαουδική Αραβία"

        Cldr.SB ->
            "Νήσοι Σολομώντος"

        Cldr.SC ->
            "Σεϋχέλλες"

        Cldr.SD ->
            "Σουδάν"

        Cldr.SE ->
            "Σουηδία"

        Cldr.SG ->
            "Σιγκαπούρη"

        Cldr.SH ->
            "Αγία Ελένη"

        Cldr.SI ->
            "Σλοβενία"

        Cldr.SJ ->
            "Σβάλμπαρντ και Γιαν Μαγιέν"

        Cldr.SK ->
            "Σλοβακία"

        Cldr.SL ->
            "Σιέρα Λεόνε"

        Cldr.SM ->
            "Άγιος Μαρίνος"

        Cldr.SN ->
            "Σενεγάλη"

        Cldr.SO ->
            "Σομαλία"

        Cldr.SR ->
            "Σουρινάμ"

        Cldr.SS ->
            "Νότιο Σουδάν"

        Cldr.ST ->
            "Σάο Τομέ και Πρίνσιπε"

        Cldr.SV ->
            "Ελ Σαλβαδόρ"

        Cldr.SX ->
            "Άγιος Μαρτίνος (Ολλανδικό τμήμα)"

        Cldr.SY ->
            "Συρία"

        Cldr.SZ ->
            "Εσουατίνι"

        Cldr.TC ->
            "Νήσοι Τερκς και Κάικος"

        Cldr.TD ->
            "Τσαντ"

        Cldr.TF ->
            "Γαλλικά Νότια Εδάφη"

        Cldr.TG ->
            "Τόγκο"

        Cldr.TH ->
            "Ταϊλάνδη"

        Cldr.TJ ->
            "Τατζικιστάν"

        Cldr.TK ->
            "Τοκελάου"

        Cldr.TL ->
            "Τιμόρ-Λέστε"

        Cldr.TM ->
            "Τουρκμενιστάν"

        Cldr.TN ->
            "Τυνησία"

        Cldr.TO ->
            "Τόνγκα"

        Cldr.TR ->
            "Τουρκία"

        Cldr.TT ->
            "Τρινιντάντ και Τομπάγκο"

        Cldr.TV ->
            "Τουβαλού"

        Cldr.TW ->
            "Ταϊβάν"

        Cldr.TZ ->
            "Τανζανία"

        Cldr.UA ->
            "Ουκρανία"

        Cldr.UG ->
            "Ουγκάντα"

        Cldr.UM ->
            "Απομακρυσμένες Νησίδες ΗΠΑ"

        Cldr.US ->
            "Ηνωμένες Πολιτείες"

        Cldr.UY ->
            "Ουρουγουάη"

        Cldr.UZ ->
            "Ουζμπεκιστάν"

        Cldr.VA ->
            "Βατικανό"

        Cldr.VC ->
            "Άγιος Βικέντιος και Γρεναδίνες"

        Cldr.VE ->
            "Βενεζουέλα"

        Cldr.VG ->
            "Βρετανικές Παρθένες Νήσοι"

        Cldr.VI ->
            "Αμερικανικές Παρθένες Νήσοι"

        Cldr.VN ->
            "Βιετνάμ"

        Cldr.VU ->
            "Βανουάτου"

        Cldr.WF ->
            "Γουάλις και Φουτούνα"

        Cldr.WS ->
            "Σαμόα"

        Cldr.XK ->
            "Κοσσυφοπέδιο"

        Cldr.YE ->
            "Υεμένη"

        Cldr.YT ->
            "Μαγιότ"

        Cldr.ZA ->
            "Νότια Αφρική"

        Cldr.ZM ->
            "Ζάμπια"

        Cldr.ZW ->
            "Ζιμπάμπουε"