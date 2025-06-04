package dal

import (
	"context"

	"github.com/uptrace/bun"
)

// txKey is an unexported type used as a key for storing the transaction in the context.
type txKey struct{}

// WithTx returns a new context with the given bun.Tx embedded.
// This allows subsequent operations in the context to access and use the transaction,
// ensuring that all operations within that context are part of the same database transaction.
func WithTx(ctx context.Context, tx bun.Tx) context.Context {
	return context.WithValue(ctx, txKey{}, tx)
}

// GetDB retrieves the appropriate bun.IDB instance from the context.
// If a transaction (bun.Tx) is present in the context (meaning WithTx was called upstream),
// it returns the transaction. Otherwise, it returns the provided default *bun.DB instance.
func GetDB(ctx context.Context, db *bun.DB) bun.IDB {
	if tx, ok := ctx.Value(txKey{}).(bun.Tx); ok {
		return tx
	}
	return db
}
