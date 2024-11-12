# capacitor-plugin-phone-call

a native phone call plugin for Capacitor

## Install

```bash
npm install capacitor-plugin-phone-call
npx cap sync
```
eg:
```typescript
import { PhoneCall } from "capacitor-plugin-phone-call";

PhoneCall.call({ phone: "10086" });

```

## API

<docgen-index>

* [`call(...)`](#call)
* [Interfaces](#interfaces)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### call(...)

```typescript
call(options: CallOptions) => Promise<void>
```

| Param         | Type                                                |
| ------------- | --------------------------------------------------- |
| **`options`** | <code><a href="#calloptions">CallOptions</a></code> |

--------------------


### Interfaces


#### CallOptions

| Prop        | Type                |
| ----------- | ------------------- |
| **`phone`** | <code>string</code> |

</docgen-api>
