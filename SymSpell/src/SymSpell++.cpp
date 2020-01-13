#include "SymSpell++.hpp"

#include <algorithm>
#include <codecvt>
#include <iostream>
#include <locale>
#include <sstream>
#include <string>
#include <unordered_set>
#include <vector>

const void* sym_spell_initialize_path(const char* sym_spell_model_path, const char* sym_spell_bigram_model_path) {
    return nullptr;
}

const void* sym_spell_initialize_istream(const void* sym_spell_model_istream, const void* sym_spell_bigram_model_istream) {
    return nullptr;
}

void sym_spell_deallocate(const void* object) {
    return;
}

int sym_spell_correct(const void* object, const char* sentence) {
    return 0;
}
