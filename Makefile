
SRC_FILES		:=	runtime/main.cpp

OUT_DIR			:=	output
_OUT_FILE		:=	runtime
OUT_FILE		:=	$(OUT_DIR)/$(_OUT_FILE)

V8_DIR			:=	../v8
V8_OBJ_EXT		:=	$(V8_DIR)/out.gn/x64.release/obj
V8_OBJ			:=	$(V8_DIR)/out/x64.release/obj.target


BIN_FILES		:=	$(wildcard $(V8_DIR)/out/x64.release/*.bin)
OUT_BIN_FILES	:=	$(addprefix $(OUT_DIR)/, $(notdir $(BIN_FILES)))

LIBS			:=	\
					$(V8_OBJ)/src/libv8_base.a \
					$(V8_OBJ)/src/libv8_libbase.a \
					$(V8_OBJ)/src/libv8_external_snapshot.a \
					$(V8_OBJ)/src/libv8_libplatform.a \
					$(V8_OBJ)/src/libv8_libsampler.a \
					$(V8_OBJ_EXT)/third_party/icu/libicuuc.a \
					$(V8_OBJ_EXT)/third_party/icu/libicui18n.a \

$(OUT_FILE): $(OUT_DIR)/.stub $(OUT_BIN_FILES) $(SRC_FILES)
	g++ -I$(V8_DIR) -I$(V8_DIR)/include $(SRC_FILES) -o $@ -Wl,--start-group $(LIBS) -Wl,--end-group -lrt -ldl -pthread -std=c++0x

$(OUT_DIR)/%.bin: $(V8_DIR)/out/x64.release/%.bin
	cp $< $@

$(OUT_DIR)/.stub:
	mkdir -p $(dir $@)
	touch $@
	
run: $(OUT_FILE)
	@cd $(OUT_DIR) && ./$(_OUT_FILE)
	
clean:
	rm -fr output


.phony: run clean

#	g++ -I../v8 $(SRC_FILES) -o $@ -Wl,--start-group ../v8/out/x64.release/obj.target/{tools/gyp/libv8_{base,libbase,external_snapshot,libplatform},third_party/icu/libicu{uc,i18n,data}}.a -Wl,--end-group -lrt -ldl -pthread -std=c++0x

