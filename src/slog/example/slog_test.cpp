
#include "slog_api.h"
#include "stdio.h"

int
main(int argc, char* argv[])
{
	const char* module;

	if (argc > 1)
		module = argv[1];
	else
		module = "test";
	CSLog logger(module);

	for (int i = 0; i < argc; i++) {
		logger.Warn("%s", argv[i]);
	}

	return 0;
}
