init:
	west init -l app/
update:
	west update
jorne_vu_keys:
	west build -p -s ./app -d build/jorne_vu_keys/left -b nrfmicro_13 -- -DSHIELD=jorne_left -DZMK_CONFIG="/workspaces/zmk/configs/jorne/config"
	cp -f build/jorne_vu_keys/left/zephyr/zmk.uf2 ./jorne_vu_keys_left.uf2
	west build -p -s ./app -d build/jorne_vu_keys/right -b nrfmicro_13 -- -DSHIELD=jorne_right -DZMK_CONFIG="/workspaces/zmk/configs/jorne/config"
	cp -f build/jorne_vu_keys/right/zephyr/zmk.uf2 ./jorne_vu_keys_right.uf2
jian_vu_keys:
	west build -p -s ./app -d build/jian_vu_keys/left -b nrfmicro_13 -- -DSHIELD=jian_left -DZMK_CONFIG="/workspaces/zmk/configs/jian/config"
	cp -f build/jian_vu_keys/left/zephyr/zmk.uf2 ./jian_vu_keys_left.uf2
	west build -p -s ./app -d build/jian_vu_keys/right -b nrfmicro_13 -- -DSHIELD=jian_right -DZMK_CONFIG="/workspaces/zmk/configs/jian/config"
	cp -f build/jian_vu_keys/right/zephyr/zmk.uf2 ./jian_vu_keys_right.uf2

dactyl_vu_keys:
	west build -p -s ./app -d build/dactyl_vu_keys/left -b nrfmicro_13 -- -DSHIELD=manuform_left -DZMK_CONFIG="/workspaces/zmk/configs/dactyl/config"
	cp -f build/dactyl_vu_keys/left/zephyr/zmk.uf2 ./dactyl_vu_keys_left.uf2
	west build -p -s ./app -d build/dactyl_vu_keys/right -b nrfmicro_13 -- -DSHIELD=manuform_right -DZMK_CONFIG="/workspaces/zmk/configs/dactyl/config"
	cp -f build/dactyl_vu_keys/right/zephyr/zmk.uf2 ./dactyl_vu_keys_right.uf2

corne:
	west build -p -s ./app -d build/corne/left -b nrfmicro_13 -- -DSHIELD=corne_left -DZMK_CONFIG="/workspaces/zmk/configs/corne/config"
	cp -f build/corne/left/zephyr/zmk.uf2 ./corne_left.uf2
	west build -p -s ./app -d build/corne/right -b nrfmicro_13 -- -DSHIELD=corne_right -DZMK_CONFIG="/workspaces/zmk/configs/corne/config"
	cp -f build/corne/right/zephyr/zmk.uf2 ./corne_right.uf2

corne_lp:
	west build -p -s ./app -d build/corne_lp/left -b nrfmicro_13 -- -DSHIELD=corne_left -DZMK_CONFIG="/workspaces/zmk/configs/zmk-config-corne/config"
	cp -f build/corne_lp/left/zephyr/zmk.uf2 ./corne_lp_left.uf2
	west build -p -s ./app -d build/corne_lp/right -b nrfmicro_13 -- -DSHIELD=corne_right -DZMK_CONFIG="/workspaces/zmk/configs/zmk-config-corne/config"
	cp -f build/corne_lp/right/zephyr/zmk.uf2 ./corne_lp_right.uf2

sofle_nrf:
	west build -p -s ./app -d build/sofle_nrf/left -b nrfmicro_13 -- -DSHIELD=sofle_left -DZMK_CONFIG="/workspaces/zmk/configs/zmk-config-sofle-nrf/config"
	cp -f build/sofle_nrf/left/zephyr/zmk.uf2 ./sofle_nrf_left.uf2
	west build -p -s ./app -d build/sofle_nrf/right -b nrfmicro_13 -- -DSHIELD=sofle_right -DZMK_CONFIG="/workspaces/zmk/configs/zmk-config-sofle-nrf/config"
	cp -f build/sofle_nrf/right/zephyr/zmk.uf2 ./sofle_nrf_right.uf2

tg4x_nrf:
	west build -p -s ./app -d build/tg4x_nrf -b nrfmicro_13 -- -DSHIELD=tg4x -DZMK_CONFIG="/workspaces/zmk/configs/zmk-config-tg4x/config"
	cp -f build/tg4x_nrf/zephyr/zmk.uf2 ./tg4x.uf2