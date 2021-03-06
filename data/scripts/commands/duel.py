from swgpy.command import BaseSwgCommand
from swgpy import PVPSTATUS, OutOfBand, ProseType

class DuelCommand(BaseSwgCommand):
    def Run(self):
        actor = self.GetActor()
        target = self.GetTarget()
        
        Acontroller = actor.Controller()
        Tcontroller = target.Controller()
        if not actor.in_duel_list(target.id):
            actor.add_duel_list(target.id)
            #system message
            Acontroller.SendSystemMessage(OutOfBand("duel", "challenge_self", ProseType.TT, target.id), False, False)
            Tcontroller.SendSystemMessage(OutOfBand("duel", "challenge_target", ProseType.TT, actor.id), False, False)
        if actor.in_duel_list(target.id) and target.in_duel_list(actor.id):
            # Start The Duel
            Acontroller.SendSystemMessage(OutOfBand("duel", "accept_target", ProseType.TT, target.id), False, False)
            Tcontroller.SendSystemMessage(OutOfBand("duel", "accept_self", ProseType.TT, actor.id), False, False)
            actor.pvp_status = PVPSTATUS.PvPStatus_Attackable
            target.pvp_status = PVPSTATUS.PvPStatus_Attackable
            actor.activate_auto_attack();
            target.activate_auto_attack();
