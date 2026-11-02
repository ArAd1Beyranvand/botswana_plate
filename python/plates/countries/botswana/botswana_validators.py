"""Port of botswana_plate/lib/src/botswana_validators.dart."""
from __future__ import annotations

import re
from dataclasses import dataclass

from plates.core.validators.plate_validator import GatedPlateValidator, PlateEntry, PlateValidation, is_digits_of_length


@dataclass(frozen=True)
class BotswanaValidator(GatedPlateValidator):
    gate_group = "serial"
    _register = re.compile(r"^[A-PR-Z]{3}$")

    def judge(self, entry: PlateEntry) -> PlateValidation:
        if entry.group("prefix") != "B":
            return PlateValidation.invalid("The prefix is B.")
        if not is_digits_of_length(entry.group("serial"), 3):
            return PlateValidation.invalid("The number is three digits.")
        if not self._register.fullmatch(entry.group("suffix")):
            return PlateValidation.invalid("The register is three letters, never Q.")
        return PlateValidation.valid()


@dataclass(frozen=True)
class BotswanaGovernmentValidator(GatedPlateValidator):
    gate_group = "serial"

    def judge(self, entry: PlateEntry) -> PlateValidation:
        if entry.group("prefix") != "BX":
            return PlateValidation.invalid("The prefix is BX.")
        if not is_digits_of_length(entry.group("serial"), 6):
            return PlateValidation.invalid("The number is six digits.")
        return PlateValidation.valid()
