#pragma once

#ifdef __cplusplus
extern "C" {
#endif

const void* sym_spell_initialize_path(const char* sym_spell_model_path, const char* sym_spell_bigram_model_path);

const void* sym_spell_initialize_istream(const void* sym_spell_model_istream, const void* sym_spell_bigram_model_istream);

void sym_spell_deallocate(const void* object);

int sym_spell_correct(const void* object, const char* sentence);

#ifdef __cplusplus
}
#endif
