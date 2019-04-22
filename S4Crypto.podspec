Pod::Spec.new do |s|
	s.name         = "S4Crypto"
	s.version      = "2.2.7"
	s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
	s.summary      = "S4Crypto - Security Library 4 used by 4th A Technologies, LLC."
	s.description  = <<-DESC
S4Crypto is an extensive cross platform library of cryptographic functions that can be called from the C API. It was designed to be portable, such that it can be cross-compiled for different architectures, including OS X, IOS, Linux, Android, and Windows.
                   DESC
	s.homepage     = "https://github.com/4th-ATechnologies/S4"
	s.author    	= "4th-ATechnologies"

 	s.ios.deployment_target = '9.2'
 	s.osx.deployment_target = '10.10'
 	s.tvos.deployment_target = '9.0'
 	s.watchos.deployment_target = '2.0'

	s.source = {
		:git => "https://github.com/4th-ATechnologies/S4.git",
 		:tag => s.version.to_s
	}

	s.compiler_flags = '-fno-objc-arc'

	s.public_header_files =  [
		'src/main/S4/S4Crypto.h',
		'src/main/S4/s4pubtypes.h',
		'src/main/S4/s4rng.h',
		'src/main/S4/s4hash.h',
		'src/main/S4/s4mac.h',
		'src/main/S4/s4cipher.h',
		'src/main/S4/s4p2k.h',
		'src/main/S4/s4tbc.h',
		'src/main/S4/s4ecc.h',
		'src/main/S4/s4share.h',
		'src/main/S4/s4keys.h',
		'src/main/S4/s4utilities.h',
		'src/main/S4/s4keysinternal.h'
		]

	s.xcconfig = { "HEADER_SEARCH_PATHS" => '${PODS_TARGET_SRCROOT}/libs/tomcrypt/headers ${PODS_TARGET_SRCROOT}/libs/tommath ${PODS_TARGET_SRCROOT}/libs/sha3 ${PODS_TARGET_SRCROOT}/libs/argon2 ${PODS_TARGET_SRCROOT}/libs/tomcrypt/hashes/skein ${PODS_TARGET_SRCROOT}/src/main/scripts ${PODS_TARGET_SRCROOT}/libs/xxHash ${PODS_TARGET_SRCROOT}/libs/yajl/src ${PODS_TARGET_SRCROOT}/libs/yajl/src/api ${PODS_TARGET_SRCROOT}/libs/jsmn' }

 
	s.source_files = [
		'src/main/S4/**/*.{h,inc}',
		'libs/common/**/*.{h,inc}',
		'libs/tomcrypt/**/*.{h,inc}',
		'libs/tommath/**/*.{h,inc}',
		'libs/sha3/**/*.{h,inc}',
		'libs/argon2/**/*.{h,inc}',
		'libs/xxHash/**/*.{h,inc}',
		'libs/yajl/**/*.{h,inc}',
		'libs/jsmn/**/*.{h,inc}',
		'src/main/S4/s4.c',
		'src/main/S4/s4hash.c',
		'src/main/S4/s4pbkdf2.c',
		'src/main/S4/s4bufferutilities.c',
		'src/main/S4/s4hashword.c',
		'src/main/S4/s4share.c',
		'src/main/S4/s4cipher.c',
		'src/main/S4/s4tbc.c',
		'src/main/S4/s4ecc.c',
		'src/main/S4/s4mac.c',
		'src/main/S4/zbase32.c',
		'src/main/S4/s4keys.c',
		'src/main/S4/s4P2K.c',
		'libs/xxHash/xxhash.c',
		'libs/jsmn/jsmn.c',
		'libs/yajl/src/yajl.c',
		'libs/yajl/src/yajl_alloc.c',
		'libs/yajl/src/yajl_buf.c',
		'libs/yajl/src/yajl_encode.c',
		'libs/yajl/src/yajl_gen.c',
		'libs/yajl/src/yajl_lex.c',
		'libs/yajl/src/yajl_parser.c',
		'libs/yajl/src/yajl_tree.c',
		'libs/argon2/argon2.c',
		'libs/argon2/core.c',
		'libs/argon2/ref.c',
		'libs/argon2/blake2b.c',
		'libs/argon2/encoding.c',
		'libs/argon2/thread.c',
		'libs/sha3/KeccakHash.c',
		'libs/sha3/KeccakSpongeWidth1600.c',
		'libs/sha3/KeccakP-1600-reference.c',
		'libs/sha3/SimpleFIPS202.c',
		'libs/tommath/bn_mp_and.c',
		'libs/tommath/bn_mp_signed_bin_size.c',
		'libs/tommath/bn_mp_exteuclid.c',
		'libs/tommath/bncore.c',
		'libs/tommath/bn_fast_s_mp_sqr.c',
		'libs/tommath/bn_mp_rshd.c',
		'libs/tommath/bn_mp_read_unsigned_bin.c',
		'libs/tommath/bn_fast_mp_invmod.c',
		'libs/tommath/bn_mp_prime_is_prime.c',
		'libs/tommath/bn_mp_radix_smap.c',
		'libs/tommath/bn_mp_div_2d.c',
		'libs/tommath/bn_s_mp_sqr.c',
		'libs/tommath/bn_mp_mod.c',
		'libs/tommath/bn_mp_n_root.c',
		'libs/tommath/bn_mp_cmp_d.c',
		'libs/tommath/bn_mp_clear.c',
		'libs/tommath/bn_mp_div_2.c',
		'libs/tommath/bn_mp_sub.c',
		'libs/tommath/bn_mp_copy.c',
		'libs/tommath/bn_mp_to_unsigned_bin.c',
		'libs/tommath/bn_mp_read_radix.c',
		'libs/tommath/bn_mp_prime_fermat.c',
		'libs/tommath/bn_mp_mod_d.c',
		'libs/tommath/bn_mp_lcm.c',
		'libs/tommath/bn_mp_cnt_lsb.c',
		'libs/tommath/bn_error.c',
		'libs/tommath/bn_mp_abs.c',
		'libs/tommath/bn_mp_reduce.c',
		'libs/tommath/bn_s_mp_mul_digs.c',
		'libs/tommath/bn_mp_montgomery_setup.c',
		'libs/tommath/bn_mp_reduce_2k_setup.c',
		'libs/tommath/bn_mp_mul_d.c',
		'libs/tommath/bn_mp_shrink.c',
		'libs/tommath/bn_mp_clear_multi.c',
		'libs/tommath/bn_prime_tab.c',
		'libs/tommath/bn_mp_cmp.c',
		'libs/tommath/bn_mp_sqrmod.c',
		'libs/tommath/bn_mp_reduce_2k_setup_l.c',
		'libs/tommath/bn_mp_neg.c',
		'libs/tommath/bn_mp_addmod.c',
		'libs/tommath/bn_mp_init.c',
		'libs/tommath/bn_mp_prime_miller_rabin.c',
		'libs/tommath/bn_mp_invmod.c',
		'libs/tommath/bn_s_mp_sub.c',
		'libs/tommath/bn_mp_exch.c',
		'libs/tommath/bn_mp_sqrt.c',
		'libs/tommath/bn_mp_toradix.c',
		'libs/tommath/bn_mp_init_set_int.c',
		'libs/tommath/bn_mp_init_multi.c',
		'libs/tommath/bn_mp_mulmod.c',
		'libs/tommath/bn_mp_add.c',
		'libs/tommath/bn_mp_karatsuba_mul.c',
		'libs/tommath/bn_mp_expt_d.c',
		'libs/tommath/bn_mp_read_signed_bin.c',
		'libs/tommath/bn_mp_reduce_is_2k_l.c',
		'libs/tommath/bn_mp_submod.c',
		'libs/tommath/bn_mp_init_set.c',
		'libs/tommath/bn_mp_exptmod.c',
		'libs/tommath/bn_mp_grow.c',
		'libs/tommath/bn_mp_prime_rabin_miller_trials.c',
		'libs/tommath/bn_mp_sqr.c',
		'libs/tommath/bn_reverse.c',
		'libs/tommath/bn_mp_dr_is_modulus.c',
		'libs/tommath/bn_mp_sub_d.c',
		'libs/tommath/bn_mp_count_bits.c',
		'libs/tommath/bn_s_mp_exptmod.c',
		'libs/tommath/bn_mp_montgomery_calc_normalization.c',
		'libs/tommath/bn_mp_get_int.c',
		'libs/tommath/bn_mp_unsigned_bin_size.c',
		'libs/tommath/bn_mp_mul_2d.c',
		'libs/tommath/bn_fast_s_mp_mul_digs.c',
		'libs/tommath/bn_mp_lshd.c',
		'libs/tommath/bn_mp_to_unsigned_bin_n.c',
		'libs/tommath/bn_fast_mp_montgomery_reduce.c',
		'libs/tommath/bn_mp_reduce_2k.c',
		'libs/tommath/bn_mp_toom_sqr.c',
		'libs/tommath/bn_mp_mul_2.c',
		'libs/tommath/bn_mp_2expt.c',
		'libs/tommath/bn_mp_dr_setup.c',
		'libs/tommath/bn_mp_clamp.c',
		'libs/tommath/bn_mp_karatsuba_sqr.c',
		'libs/tommath/bn_mp_exptmod_fast.c',
		'libs/tommath/bn_mp_jacobi.c',
		'libs/tommath/bn_mp_fread.c',
		'libs/tommath/bn_mp_toradix_n.c',
		'libs/tommath/bn_mp_zero.c',
		'libs/tommath/bn_mp_mul.c',
		'libs/tommath/bn_mp_prime_next_prime.c',
		'libs/tommath/bn_s_mp_mul_high_digs.c',
		'libs/tommath/bn_mp_div_d.c',
		'libs/tommath/bn_mp_radix_size.c',
		'libs/tommath/bn_mp_gcd.c',
		'libs/tommath/bn_mp_invmod_slow.c',
		'libs/tommath/bn_mp_is_square.c',
		'libs/tommath/bn_mp_set.c',
		'libs/tommath/bn_mp_to_signed_bin_n.c',
		'libs/tommath/bn_mp_div.c',
		'libs/tommath/bn_mp_prime_is_divisible.c',
		'libs/tommath/bn_mp_reduce_is_2k.c',
		'libs/tommath/bn_mp_init_copy.c',
		'libs/tommath/bn_fast_s_mp_mul_high_digs.c',
		'libs/tommath/bn_mp_fwrite.c',
		'libs/tommath/bn_mp_set_int.c',
		'libs/tommath/bn_mp_cmp_mag.c',
		'libs/tommath/bn_mp_rand.c',
		'libs/tommath/bn_mp_reduce_2k_l.c',
		'libs/tommath/bn_mp_or.c',
		'libs/tommath/bn_mp_prime_random_ex.c',
		'libs/tommath/bn_mp_div_3.c',
		'libs/tommath/bn_mp_to_signed_bin.c',
		'libs/tommath/bn_s_mp_add.c',
		'libs/tommath/bn_mp_dr_reduce.c',
		'libs/tommath/bn_mp_xor.c',
		'libs/tommath/bn_mp_reduce_setup.c',
		'libs/tommath/bn_mp_add_d.c',
		'libs/tommath/bn_mp_montgomery_reduce.c',
		'libs/tommath/bn_mp_mod_2d.c',
		'libs/tommath/bn_mp_toom_mul.c',
		'libs/tommath/bn_mp_init_size.c',
		'libs/tomcrypt/ciphers/aes/aes.c',
		'libs/tomcrypt/ciphers/twofish/twofish.c',
		'libs/tomcrypt/ciphers/twofish/twofish_tab.h',
		'libs/tomcrypt/hashes/helper/hash_memory.c',
		'libs/tomcrypt/hashes/md5.c',
		'libs/tomcrypt/hashes/sha1.c',
		'libs/tomcrypt/hashes/sha2/sha256.c',
		'libs/tomcrypt/hashes/sha2/sha512.c',
		'libs/tomcrypt/hashes/skein/skein.c',
		'libs/tomcrypt/hashes/skein/threefish512Block.c',
		'libs/tomcrypt/hashes/skein/skeinApi.c',
		'libs/tomcrypt/hashes/skein/threefish1024Block.c',
		'libs/tomcrypt/hashes/skein/threefishApi.c',
		'libs/tomcrypt/hashes/skein/skein_block.c',
		'libs/tomcrypt/hashes/skein/threefish256Block.c',
		'libs/tomcrypt/hashes/skein/threefish_tc.c',
		'libs/tomcrypt/hashes/skein/skein_tc.c',
		'libs/tomcrypt/mac/hmac/hmac_done.c',
		'libs/tomcrypt/mac/hmac/hmac_file.c',
		'libs/tomcrypt/mac/hmac/hmac_init.c',
		'libs/tomcrypt/mac/hmac/hmac_memory_multi.c',
		'libs/tomcrypt/mac/hmac/hmac_memory.c',
		'libs/tomcrypt/mac/hmac/hmac_process.c',
		'libs/tomcrypt/math/ltm_desc.c',
		'libs/tomcrypt/math/multi.c',
		'libs/tomcrypt/misc/base64/base64_decode.c',
		'libs/tomcrypt/misc/base64/base64_encode.c',
		'libs/tomcrypt/misc/burn_stack.c',
		'libs/tomcrypt/misc/crypt/crypt_argchk.c',
		'libs/tomcrypt/misc/crypt/crypt_argchk.c',
		'libs/tomcrypt/misc/crypt/crypt_cipher_descriptor.c',
		'libs/tomcrypt/misc/crypt/crypt_cipher_is_valid.c',
		'libs/tomcrypt/misc/crypt/crypt_find_cipher_any.c',
		'libs/tomcrypt/misc/crypt/crypt_find_cipher_id.c',
		'libs/tomcrypt/misc/crypt/crypt_find_cipher.c',
		'libs/tomcrypt/misc/crypt/crypt_find_hash_any.c',
		'libs/tomcrypt/misc/crypt/crypt_find_hash_id.c',
		'libs/tomcrypt/misc/crypt/crypt_find_hash_oid.c',
		'libs/tomcrypt/misc/crypt/crypt_find_hash.c',
		'libs/tomcrypt/misc/crypt/crypt_find_prng.c',
		'libs/tomcrypt/misc/crypt/crypt_hash_descriptor.c',
		'libs/tomcrypt/misc/crypt/crypt_hash_is_valid.c',
		'libs/tomcrypt/misc/crypt/crypt_ltc_mp_descriptor.c',
		'libs/tomcrypt/misc/crypt/crypt_prng_descriptor.c',
		'libs/tomcrypt/misc/crypt/crypt_prng_is_valid.c',
		'libs/tomcrypt/misc/crypt/crypt_register_cipher.c',
		'libs/tomcrypt/misc/crypt/crypt_register_hash.c',
		'libs/tomcrypt/misc/crypt/crypt_register_hash.c',
		'libs/tomcrypt/misc/crypt/crypt_register_prng.c',
		'libs/tomcrypt/misc/pkcs5/pkcs_5_2.c',
		'libs/tomcrypt/misc/zeromem.c',
		'libs/tomcrypt/misc/pk_get_oid.c',
		'libs/tomcrypt/modes/cbc/cbc_decrypt.c',
		'libs/tomcrypt/modes/cbc/cbc_done.c',
		'libs/tomcrypt/modes/cbc/cbc_encrypt.c',
		'libs/tomcrypt/modes/cbc/cbc_getiv.c',
		'libs/tomcrypt/modes/cbc/cbc_setiv.c',
		'libs/tomcrypt/modes/cbc/cbc_start.c',
		'libs/tomcrypt/modes/ecb/ecb_decrypt.c',
		'libs/tomcrypt/modes/ecb/ecb_done.c',
		'libs/tomcrypt/modes/ecb/ecb_encrypt.c',
		'libs/tomcrypt/modes/ecb/ecb_start.c',
		'libs/tomcrypt/pk/asn1/der/bit/der_decode_bit_string.c',
		'libs/tomcrypt/pk/asn1/der/bit/der_decode_raw_bit_string.c',
		'libs/tomcrypt/pk/asn1/der/bit/der_encode_bit_string.c',
		'libs/tomcrypt/pk/asn1/der/bit/der_encode_raw_bit_string.c',
		'libs/tomcrypt/pk/asn1/der/bit/der_length_bit_string.c',
		'libs/tomcrypt/pk/asn1/der/boolean/der_decode_boolean.c',
		'libs/tomcrypt/pk/asn1/der/boolean/der_encode_boolean.c',
		'libs/tomcrypt/pk/asn1/der/boolean/der_length_boolean.c',
		'libs/tomcrypt/pk/asn1/der/choice/der_decode_choice.c',
		'libs/tomcrypt/pk/asn1/der/ia5/der_decode_ia5_string.c',
		'libs/tomcrypt/pk/asn1/der/ia5/der_encode_ia5_string.c',
		'libs/tomcrypt/pk/asn1/der/ia5/der_length_ia5_string.c',
		'libs/tomcrypt/pk/asn1/der/integer/der_decode_integer.c',
		'libs/tomcrypt/pk/asn1/der/integer/der_encode_integer.c',
		'libs/tomcrypt/pk/asn1/der/integer/der_length_integer.c',
		'libs/tomcrypt/pk/asn1/der/object_identifier/der_decode_object_identifier.c',
		'libs/tomcrypt/pk/asn1/der/object_identifier/der_encode_object_identifier.c',
		'libs/tomcrypt/pk/asn1/der/object_identifier/der_length_object_identifier.c',
		'libs/tomcrypt/pk/asn1/der/octet/der_decode_octet_string.c',
		'libs/tomcrypt/pk/asn1/der/octet/der_encode_octet_string.c',
		'libs/tomcrypt/pk/asn1/der/octet/der_length_octet_string.c',
		'libs/tomcrypt/pk/asn1/der/printable_string/der_decode_printable_string.c',
		'libs/tomcrypt/pk/asn1/der/printable_string/der_encode_printable_string.c',
		'libs/tomcrypt/pk/asn1/der/printable_string/der_length_printable_string.c',
		'libs/tomcrypt/pk/asn1/der/sequence/der_decode_sequence_ex.c',
		'libs/tomcrypt/pk/asn1/der/sequence/der_decode_sequence_flexi.c',
		'libs/tomcrypt/pk/asn1/der/sequence/der_decode_sequence_multi.c',
		'libs/tomcrypt/pk/asn1/der/sequence/der_encode_sequence_ex.c',
		'libs/tomcrypt/pk/asn1/der/sequence/der_encode_sequence_multi.c',
		'libs/tomcrypt/pk/asn1/der/sequence/der_encode_subject_public_key_info.c',
		'libs/tomcrypt/pk/asn1/der/sequence/der_length_sequence.c',
		'libs/tomcrypt/pk/asn1/der/sequence/der_sequence_free.c',
		'libs/tomcrypt/pk/asn1/der/set/der_encode_set.c',
		'libs/tomcrypt/pk/asn1/der/set/der_encode_setof.c',
		'libs/tomcrypt/pk/asn1/der/short_integer/der_decode_short_integer.c',
		'libs/tomcrypt/pk/asn1/der/short_integer/der_encode_short_integer.c',
		'libs/tomcrypt/pk/asn1/der/short_integer/der_length_short_integer.c',
		'libs/tomcrypt/pk/asn1/der/utctime/der_decode_utctime.c',
		'libs/tomcrypt/pk/asn1/der/utctime/der_encode_utctime.c',
		'libs/tomcrypt/pk/asn1/der/utctime/der_length_utctime.c',
		'libs/tomcrypt/pk/asn1/der/utf8/der_decode_utf8_string.c',
		'libs/tomcrypt/pk/asn1/der/utf8/der_encode_utf8_string.c',
		'libs/tomcrypt/pk/asn1/der/utf8/der_length_utf8_string.c',
		'libs/tomcrypt/pk/ecc_bl/ecc_bl_ansi_x963_import.c',
		'libs/tomcrypt/pk/ecc_bl/ecc_bl_decrypt_key.c',
		'libs/tomcrypt/pk/ecc_bl/ecc_bl_encrypt_key.c',
		'libs/tomcrypt/pk/ecc_bl/ecc_bl_import.c',
		'libs/tomcrypt/pk/ecc_bl/ecc_bl_make_key.c',
		'libs/tomcrypt/pk/ecc_bl/ecc_bl_sign_hash.c',
		'libs/tomcrypt/pk/ecc_bl/ecc_bl_verify_hash.c',
		'libs/tomcrypt/pk/ecc_bl/ecc_bl.c',
		'libs/tomcrypt/pk/ecc/ecc_ansi_x963_export.c',
		'libs/tomcrypt/pk/ecc/ecc_ansi_x963_import.c',
		'libs/tomcrypt/pk/ecc/ecc_decrypt_key.c',
		'libs/tomcrypt/pk/ecc/ecc_encrypt_key.c',
		'libs/tomcrypt/pk/ecc/ecc_export.c',
		'libs/tomcrypt/pk/ecc/ecc_free.c',
		'libs/tomcrypt/pk/ecc/ecc_get_size.c',
		'libs/tomcrypt/pk/ecc/ecc_import.c',
		'libs/tomcrypt/pk/ecc/ecc_make_key.c',
		'libs/tomcrypt/pk/ecc/ecc_shared_secret.c',
		'libs/tomcrypt/pk/ecc/ecc_sign_hash.c',
		'libs/tomcrypt/pk/ecc/ecc_sizes.c',
		'libs/tomcrypt/pk/ecc/ecc_test.c',
		'libs/tomcrypt/pk/ecc/ecc_verify_hash.c',
		'libs/tomcrypt/pk/ecc/ecc.c',
		'libs/tomcrypt/pk/ecc/ltc_ecc_is_valid_idx.c',
		'libs/tomcrypt/pk/ecc/ltc_ecc_map.c',
		'libs/tomcrypt/pk/ecc/ltc_ecc_mulmod.c',
		'libs/tomcrypt/pk/ecc/ltc_ecc_points.c',
		'libs/tomcrypt/pk/ecc/ltc_ecc_projective_add_point.c',
		'libs/tomcrypt/pk/ecc/ltc_ecc_projective_dbl_point.c',
		'libs/tomcrypt/prngs/rng_get_bytes.c',
		'libs/tomcrypt/prngs/sprng.c'
	 ]
 
  end
